import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/application/auth/auth_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/product/i_product_repository.dart';
import '../../../domain/product/product.dart';
import '../../../domain/product/product_failure.dart';
import 'package:injectable/injectable.dart';

part 'product_watcher_event.dart';

part 'product_watcher_state.dart';

part 'product_watcher_bloc.freezed.dart';

@Injectable()
class ProductWatcherBloc
    extends Bloc<ProductWatcherEvent, ProductWatcherState> {
  final IProductRepository productRepository;

  final AuthBloc authBloc;
  StreamSubscription? streamSubscription;
  var favorites = <String>[];

  StreamSubscription<Either<ProductFailure, List<Product>>>?
      _productStreamSubscription;

  ProductWatcherBloc({required this.authBloc, required this.productRepository})
      : super(const ProductWatcherState.initial()) {
    streamSubscription =
        authBloc.stream.startWith(authBloc.state).listen((blocState) {
      blocState.maybeMap(
        authenticatedCustomer: (state) => favorites = state.user.favorites,
        authenticatedSupplier: (state) => favorites = state.user.favorites,
        orElse: () {},
      );
      state.maybeMap(
        loadSuccess: (state) {
          add(ProductWatcherEvent.productsReceived(right(state.products)));
        },
        orElse: () {},
      );
    });
    on<ProductWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (e) async {
          emit(const ProductWatcherState.loadInProgress());
          await _productStreamSubscription?.cancel();
          _productStreamSubscription =
              productRepository.watchAll().listen((failureOrProductList) {
            add(ProductWatcherEvent.productsReceived(failureOrProductList));
          });
        },
        watchByCategoryStarted: (e) async {
          emit(const ProductWatcherState.loadInProgress());
          await _productStreamSubscription?.cancel();
          _productStreamSubscription = productRepository
              .watchByCategory(e.category)
              .listen((failureOrProductList) {
            add(ProductWatcherEvent.productsReceived(failureOrProductList));
          });
        },
        watchByCategoryAndSubStarted: (e) async {
          emit(const ProductWatcherState.loadInProgress());
          await _productStreamSubscription?.cancel();
          _productStreamSubscription = productRepository
              .watchByCategoryAndSub(
                  category: e.category, subCategory: e.subCategory)
              .listen((failureOrProductList) {
            add(ProductWatcherEvent.productsReceived(failureOrProductList));
          });
        },
        watchBySupplierIdStarted: (e) async {
          emit(const ProductWatcherState.loadInProgress());
          await _productStreamSubscription?.cancel();
          _productStreamSubscription = productRepository
              .watchBySupplierId(e.supplierId)
              .listen((failureOrProductList) {
            add(ProductWatcherEvent.productsReceived(failureOrProductList));
          });
        },
        watchByQuery: (e) async {
          emit(const ProductWatcherState.loadInProgress());
          await _productStreamSubscription?.cancel();
          _productStreamSubscription = productRepository
              .watchByQuery(e.query)
              .listen((failureOrProductList) {
            add(ProductWatcherEvent.productsReceived(failureOrProductList));
          });
        },
        productsReceived: (e) async {
          await e.failureOrProductList.fold(
            (f) async => emit(ProductWatcherState.loadFailure(f)),
            (productList) async {
              final products = productList
                  .map(
                    (product) => favorites.contains(product.id.getOrCrash())
                        ? product.copyWith(isFavorite: true)
                        : product.copyWith(isFavorite: false),
                  )
                  .toList();
              emit(ProductWatcherState.loadSuccess(products: products));
            },
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await streamSubscription?.cancel();
    await _productStreamSubscription?.cancel();
    return super.close();
  }
}
