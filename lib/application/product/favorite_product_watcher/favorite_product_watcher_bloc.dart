import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import '../../../domain/product/i_product_repository.dart';
import '../../../domain/product/product.dart';
import '../../../domain/product/product_failure.dart';
import '../../auth/auth_bloc.dart';

part 'favorite_product_watcher_event.dart';

part 'favorite_product_watcher_state.dart';

part 'favorite_product_watcher_bloc.freezed.dart';

@Injectable()
class FavoriteProductWatcherBloc
    extends Bloc<FavoriteProductWatcherEvent, FavoriteProductWatcherState> {
  final IProductRepository productRepository;
  StreamSubscription<Either<ProductFailure, List<Product>>>?
      _productStreamSubscription;

  final AuthBloc authBloc;
  StreamSubscription? streamSubscription;
  var favorites = <String>[];

  FavoriteProductWatcherBloc(
      {required this.productRepository, required this.authBloc})
      : super(const FavoriteProductWatcherState.initial()) {
    streamSubscription =
        authBloc.stream.startWith(authBloc.state).listen((blocState) {
      blocState.maybeMap(
        authenticatedCustomer: (state) => favorites = state.user.favorites,
        authenticatedSupplier: (state) => favorites = state.user.favorites,
        orElse: () {},
      );
      state.maybeMap(
        loadSuccess: (state) {
          add(const FavoriteProductWatcherEvent.watchStarted());
        },
        orElse: () {},
      );
    });

    on<FavoriteProductWatcherEvent>((event, emit) {
      event.map(
        watchStarted: (e) async {
          emit(const FavoriteProductWatcherState.loadInProgress());
          await _productStreamSubscription?.cancel();
          if (favorites.isEmpty) {
            add(FavoriteProductWatcherEvent.productsReceived(right([])));
          } else {
            _productStreamSubscription = productRepository
                .watchByList(favorites)
                .listen((failureOrProductList) {
              add(FavoriteProductWatcherEvent.productsReceived(
                  failureOrProductList));
            });
          }
        },
        productsReceived: (e) async {
          await e.failureOrProductList.fold(
            (f) async => emit(FavoriteProductWatcherState.loadFailure(f)),
            (productList) async {
              final products = productList
                  .map(
                    (product) => favorites.contains(product.id.getOrCrash())
                        ? product.copyWith(isFavorite: true)
                        : product.copyWith(isFavorite: false),
                  )
                  .toList();
              emit(FavoriteProductWatcherState.loadSuccess(products: products));
            },
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _productStreamSubscription?.cancel();
    await streamSubscription?.cancel();
    return super.close();
  }
}
