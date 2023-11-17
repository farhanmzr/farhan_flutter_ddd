// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductItemImpl _$$ProductItemImplFromJson(Map<String, dynamic> json) =>
    _$ProductItemImpl(
      ids: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductItemImplToJson(_$ProductItemImpl instance) =>
    <String, dynamic>{
      'id': instance.ids,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'images': instance.images,
    };
