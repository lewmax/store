import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/cart/cart.dart';
import '../../../domain/cart/cart_failure.dart';
import '../../../domain/cart/i_cart_repository.dart';
import 'package:injectable/injectable.dart';

part 'cart_watcher_event.dart';

part 'cart_watcher_state.dart';

part 'cart_watcher_bloc.freezed.dart';

@Singleton()
class CartWatcherBloc extends Bloc<CartWatcherEvent, CartWatcherState> {
  final ICartRepository cartRepository;
  StreamSubscription<Either<CartFailure, Cart>>? cartStreamSubscription;

  CartWatcherBloc({required this.cartRepository})
      : super(const CartWatcherState.initial()) {
    on<CartWatcherEvent>((event, emit) {
      event.map(
        watch: (e) async {
          emit(const CartWatcherState.loadInProgress());
          await cartStreamSubscription?.cancel();
          cartStreamSubscription =
              cartRepository.watch().listen((failureOrCart) {
            add(CartWatcherEvent.cartReceived(failureOrCart));
          });
        },
        cartReceived: (e) {
          e.failureOrCart.fold(
            (f) => emit(CartWatcherState.loadFailure(f)),
            (cart) => emit(CartWatcherState.loadSuccess(cart)),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await cartStreamSubscription?.cancel();
    return super.close();
  }
}
