import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/product/i_product_repository.dart';
import '../../../domain/product/product.dart';
import '../../../domain/product/product_failure.dart';
import 'package:injectable/injectable.dart';

part 'product_actor_event.dart';

part 'product_actor_state.dart';

part 'product_actor_bloc.freezed.dart';

@Injectable()
class ProductActorBloc extends Bloc<ProductActorEvent, ProductActorState> {
  final IProductRepository productRepository;

  ProductActorBloc({required this.productRepository})
      : super(const ProductActorState.initial()) {
    on<ProductActorEvent>((event, emit) {
      event.map(
        quantityUpdated: (e) async {
          emit(const ProductActorState.actionInProgress());
          final possibleFailure =
              await productRepository.subtractQuantity(e.prodId, e.leftNumber);
          possibleFailure.fold(
            (f) => emit(ProductActorState.actionFailure(f)),
            (_) => emit(const ProductActorState.actionSuccess()),
          );
        },
        deleted: (e) async {
          emit(const ProductActorState.actionInProgress());
          final possibleFailure = await productRepository.delete(e.product);
          possibleFailure.fold(
            (f) => emit(ProductActorState.actionFailure(f)),
            (_) => emit(const ProductActorState.actionSuccess()),
          );
        },
      );
    });
  }
}
