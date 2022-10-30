import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/product/product_failure.dart';

part 'product_search_event.dart';

part 'product_search_state.dart';

part 'product_search_bloc.freezed.dart';

@Injectable()
class ProductSearchBloc extends Bloc<ProductSearchEvent, ProductSearchState> {
  ProductSearchBloc() : super(const ProductSearchState.initial()) {
    on<ProductSearchEvent>((event, emit) {
      event.map(
        searchStarted: (e) {

        },
      );
    });
  }
}
