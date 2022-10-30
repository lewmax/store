import 'dart:async';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart' as path;

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/product/value_objects.dart';

import '../../../domain/auth/i_storage_service.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../domain/product/i_product_repository.dart';
import '../../../domain/product/product.dart';
import '../../../domain/product/product_failure.dart';
import '../../core/data_converter.dart';
import 'package:injectable/injectable.dart';

part 'product_form_event.dart';

part 'product_form_state.dart';

part 'product_form_bloc.freezed.dart';

@Injectable()
class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState> {
  final IProductRepository productRepository;
  final IStorageService imageStorageService;

  ProductFormBloc({
    required this.productRepository,
    required this.imageStorageService,
  }) : super(ProductFormState.initial()) {
    on<ProductFormEvent>((event, emit) async {
      await event.map(
        initialised: (e) async {
          if (e.initialProductOption != null) {
            final imageUrlsList = e.initialProductOption!.imageUrls;
            late List<LogoImage> logoImagesList = <LogoImage>[];
            imageUrlsList.forEach((imageUrl) async {
              final file = await getFileFromUrl(imageUrl.getOrCrash());
              logoImagesList.add(LogoImage(file));
            });
            emit(state.copyWith(
              product: e.initialProductOption!,
              imagesList: ListMin1(logoImagesList),
              isEditing: true,
            ));
          }
        },
        categoryChanged: (e) {
          emit(
            state.copyWith(
              product: state.product.copyWith(
                  category: Category(e.categoryStr),
                  subCategory: SubCategory('')),
              saveFailureOrSuccess: null,
            ),
          );
        },
        subCategoryChanged: (e) {
          emit(
            state.copyWith(
              product: state.product
                  .copyWith(subCategory: SubCategory(e.subCategoryStr)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        imagesListChanged: (e) {
          emit(
            state.copyWith(
              imagesList: ListMin1(
                e.imagesList.map((image) => LogoImage(image)).toList(),
              ),
            ),
          );
        },
        priceChanged: (e) {
          emit(
            state.copyWith(
              product:
                  state.product.copyWith(price: Price.fromString(e.priceStr)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        quantityChanged: (e) {
          emit(
            state.copyWith(
              product: state.product
                  .copyWith(quantity: Quantity.fromString(e.quantityStr)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        nameChanged: (e) {
          emit(
            state.copyWith(
              product: state.product.copyWith(name: Name(e.nameStr)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        descriptionChanged: (e) {
          emit(
            state.copyWith(
              product: state.product
                  .copyWith(description: Description(e.descriptionStr)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        discountChanged: (e) {
          emit(
            state.copyWith(
              product: state.product
                  .copyWith(discount: Discount.fromString(e.discountStr)),
              saveFailureOrSuccess: null,
            ),
          );
        },
        saved: (e) async {
          Either<ProductFailure, Unit>? failureOrSuccess;

          emit(state.copyWith(isSaving: true, saveFailureOrSuccess: null));

          final imagesListValid = state.imagesList.isValid();

          if (state.product.failure == null && imagesListValid) {
            final imagesUrls = await getImagesUrlsFromImages(state.imagesList);
            final product = state.product.copyWith(imageUrls: imagesUrls);
            failureOrSuccess = state.isEditing
                ? await productRepository.update(product)
                : await productRepository.create(product);
          }

          emit(state.copyWith(
            isSaving: false,
            showErrorMessages: true,
            saveFailureOrSuccess: failureOrSuccess,
          ));
        },
        formCleared: (e) {
          emit(state.copyWith(
            product: Product.empty(),
            imagesList: ListMin1(const []),
            showErrorMessages: false,
          ));
        },
        imagesCleared: (e) {
          emit(state.copyWith(
            imagesList: ListMin1(const []),
          ));
        },
      );
    });
  }

  Future<List<ImageUrl>> getImagesUrlsFromImages(
      ListMin1<LogoImage> images) async {
    var imageUrls = <String>[];
    for (var image in state.imagesList.getOrCrash()) {
      await imageStorageService.sendImage(
        image: image.getOrCrash()!,
        folder: 'products/${state.product.name.getOrCrash()}',
        fileName: path.basename(image.getOrCrash()!.path),
      );
      final failureOrImageUrl = await imageStorageService.getDownloadURL();
      failureOrImageUrl.fold(
        (f) => f,
        (imageUrl) => imageUrls.add(imageUrl.getOrCrash()),
      );
    }
    final listMin1 = imageUrls.map((url) => ImageUrl(url)).toList();
    return listMin1;
  }
}
