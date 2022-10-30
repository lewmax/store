import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/product/value_objects.dart';

import '../../domain/auth/value_objects.dart';
import '../../domain/product/product.dart';

part 'product_dtos.freezed.dart';

part 'product_dtos.g.dart';

@freezed
abstract class ProductDto with _$ProductDto {
  const ProductDto._();

  const factory ProductDto({
    @Default('') String id,
    required String sId,
    required String category,
    required String subCategory,
    required List<String> imageUrls,
    required double price,
    required int quantity,
    required String name,
    required String description,
    required int discount,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      id: product.id.getOrCrash(),
      sId: product.sId.getOrCrash(),
      category: product.category.getOrCrash(),
      subCategory: product.subCategory.getOrCrash(),
      imageUrls: product.imageUrls.map((url) => url.getOrCrash()).toList(),
      price: product.price.getOrCrash(),
      quantity: product.quantity.getOrCrash(),
      name: product.name.getOrCrash(),
      description: product.description.getOrCrash(),
      discount: product.discount.getOrCrash(),
    );
  }

  Product toDomain() {
    return Product(
      id: UniqueId.fromUniqueString(id),
      sId: UniqueId.fromUniqueString(sId),
      category: Category(category),
      subCategory: SubCategory(subCategory),
      imageUrls: imageUrls.map((url) => ImageUrl(url)).toList(),
      price: Price(price),
      quantity: Quantity(quantity),
      name: Name(name),
      description: Description(description),
      isFavorite: false,
      discount: Discount(discount),
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  factory ProductDto.fromFirestore(DocumentSnapshot doc) {
    return ProductDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
