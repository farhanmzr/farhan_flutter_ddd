// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductItem _$ProductItemFromJson(Map<String, dynamic> json) {
  return _ProductItem.fromJson(json);
}

/// @nodoc
mixin _$ProductItem {
  @JsonKey(name: 'id')
  int get ids => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemCopyWith<ProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemCopyWith<$Res> {
  factory $ProductItemCopyWith(
          ProductItem value, $Res Function(ProductItem) then) =
      _$ProductItemCopyWithImpl<$Res, ProductItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int ids,
      String title,
      double price,
      String description,
      List<String>? images});
}

/// @nodoc
class _$ProductItemCopyWithImpl<$Res, $Val extends ProductItem>
    implements $ProductItemCopyWith<$Res> {
  _$ProductItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductItemImplCopyWith<$Res>
    implements $ProductItemCopyWith<$Res> {
  factory _$$ProductItemImplCopyWith(
          _$ProductItemImpl value, $Res Function(_$ProductItemImpl) then) =
      __$$ProductItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int ids,
      String title,
      double price,
      String description,
      List<String>? images});
}

/// @nodoc
class __$$ProductItemImplCopyWithImpl<$Res>
    extends _$ProductItemCopyWithImpl<$Res, _$ProductItemImpl>
    implements _$$ProductItemImplCopyWith<$Res> {
  __$$ProductItemImplCopyWithImpl(
      _$ProductItemImpl _value, $Res Function(_$ProductItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? images = freezed,
  }) {
    return _then(_$ProductItemImpl(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductItemImpl extends _ProductItem {
  _$ProductItemImpl(
      {@JsonKey(name: 'id') required this.ids,
      required this.title,
      required this.price,
      required this.description,
      required final List<String>? images})
      : _images = images,
        super._();

  factory _$ProductItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductItemImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int ids;
  @override
  final String title;
  @override
  final double price;
  @override
  final String description;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductItem(ids: $ids, title: $title, price: $price, description: $description, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductItemImpl &&
            (identical(other.ids, ids) || other.ids == ids) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ids, title, price, description,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductItemImplCopyWith<_$ProductItemImpl> get copyWith =>
      __$$ProductItemImplCopyWithImpl<_$ProductItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductItemImplToJson(
      this,
    );
  }
}

abstract class _ProductItem extends ProductItem {
  factory _ProductItem(
      {@JsonKey(name: 'id') required final int ids,
      required final String title,
      required final double price,
      required final String description,
      required final List<String>? images}) = _$ProductItemImpl;
  _ProductItem._() : super._();

  factory _ProductItem.fromJson(Map<String, dynamic> json) =
      _$ProductItemImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get ids;
  @override
  String get title;
  @override
  double get price;
  @override
  String get description;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$ProductItemImplCopyWith<_$ProductItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
