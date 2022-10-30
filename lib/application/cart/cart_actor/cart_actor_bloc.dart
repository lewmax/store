import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/cart/cart_item.dart';
import 'package:multi_store/domain/cart/i_cart_repository.dart';
import 'package:multi_store/domain/product/product.dart';
import 'package:multi_store/domain/product/value_objects.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/cart/cart.dart';
import '../../../domain/cart/cart_failure.dart';
import '../cart_watcher/cart_watcher_bloc.dart';
import 'package:injectable/injectable.dart';

part 'cart_actor_event.dart';

part 'cart_actor_state.dart';

part 'cart_actor_bloc.freezed.dart';

@Injectable()
class CartActorBloc extends Bloc<CartActorEvent, CartActorState> {
  final ICartRepository cartRepository;

  final CartWatcherBloc cartWatcherBloc;
  StreamSubscription? streamSubscription;
  Cart cart = Cart.empty();

  CartActorBloc({required this.cartWatcherBloc, required this.cartRepository})
      : super(const CartActorState.initial()) {
    streamSubscription = cartWatcherBloc.stream
        .startWith(cartWatcherBloc.state)
        .listen((blocState) {
      blocState.maybeMap(
        loadSuccess: (state) => cart = state.cart,
        orElse: () {},
      );
    });

    on<CartActorEvent>((event, emit) async {
      await event.map(
        addNewToCart: (e) async {
          emit(const CartActorState.actionInProgress());
          final cartItemsMap = cart.cartItems;
          final product = e.product;
          final prodId = product.id;

          Either<CartFailure, Unit>? possibleFailure;

          if (!cartItemsMap.containsKey(prodId)) {
            final cartItem = CartItem(
              prodId: prodId,
              name: product.name,
              price: product.price,
              quantity: Quantity(1),
              available: product.quantity,
              imageUrl: product.imageUrls[0],
            );
            if (cartItem.quantity.getOrCrash() <=
                cartItem.available.getOrCrash()) {
              possibleFailure = await cartRepository.create(cartItem);
            } else {
              possibleFailure = left(const CartFailure.unableToUpdate());
            }
            possibleFailure.fold(
              (f) => emit(CartActorState.actionFailure(f)),
              (_) => emit(const CartActorState.actionSuccess()),
            );
          } else {
            final cartItem = cartItemsMap[prodId]!;
            add(CartActorEvent.increase(cartItem));
          }
        },
        increase: (e) async {
          final cartItem = e.cartItem.copyWith(
            quantity: Quantity(
              e.cartItem.quantity.getOrCrash() + 1,
            ),
          );
          late Either<CartFailure, Unit> possibleFailure;
          if (cartItem.quantity.getOrCrash() <=
              cartItem.available.getOrCrash()) {
            possibleFailure = await cartRepository.update(cartItem);
          } else {
            possibleFailure = left(const CartFailure.unableToUpdate());
          }
          possibleFailure.fold(
                (f) => emit(CartActorState.actionFailure(f)),
                (_) => emit(const CartActorState.actionSuccess()),
          );
        },
        removeFromCart: (e) async {
          emit(const CartActorState.actionInProgress());
          final cartItemsMap = cart.cartItems;

          final cartItem = e.cartItem;
          final prodId = cartItem.prodId;

          Either<CartFailure, Unit>? possibleFailure;

          if (cartItemsMap[prodId]!.quantity.getOrCrash() < 2) {
            possibleFailure = await cartRepository.delete(prodId);
          } else {
            final cartItem = cartItemsMap[prodId]!.copyWith(
              quantity: Quantity(
                cartItemsMap[prodId]!.quantity.getOrCrash() - 1,
              ),
            );
            possibleFailure = await cartRepository.update(cartItem);
          }
          possibleFailure.fold(
                (f) => emit(CartActorState.actionFailure(f)),
                (_) => emit(const CartActorState.actionSuccess()),
          );
        },
        removeAll: (e) async {
          emit(const CartActorState.actionInProgress());
          final possibleFailure = await cartRepository.deleteAll();
          possibleFailure.fold(
            (f) => emit(CartActorState.actionFailure(f)),
            (_) => emit(const CartActorState.actionSuccess()),
          );
        },
      );
    });
  }
}
