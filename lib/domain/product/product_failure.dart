import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const factory ProductFailure.noData() = _NoData;
  const factory ProductFailure.noInternet() = _NoInternet;
  const factory ProductFailure.failed() = _Failed;
}