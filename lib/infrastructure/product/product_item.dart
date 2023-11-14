
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item.freezed.dart';
part 'product_item.g.dart';

@freezed
class ProductItem with _$ProductItem {
  const ProductItem._();

  factory ProductItem({
    @JsonKey(name: 'id') required int ids,
    required String title,
    required double price,
    required String description,
    required String image,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) => _$ProductItemFromJson(json);
  
}