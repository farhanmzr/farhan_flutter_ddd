part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required bool isLoading,
    required List<ProductItem> item,
    required Option<Either<ProductFailure, List<ProductItem>>> optionFailureOrSuccess,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
      item: <ProductItem>[],
      isLoading: false, 
      optionFailureOrSuccess: none());
}
