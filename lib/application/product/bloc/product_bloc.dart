import 'package:bloc/bloc.dart';
import 'package:farhan_flutter_ddd/domain/product/i_product_repository.dart';
import 'package:farhan_flutter_ddd/domain/product/product_failure.dart';
import 'package:farhan_flutter_ddd/infrastructure/product/product_item.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {

  final IProductRepository productRepository;
  ProductBloc(this.productRepository) : super(ProductState.initial()) {

    on<ProductEvent>((event, emit) async {
      
        await event.when(started: () async {

          debugPrint('ProductBloc running when event started');
          emit(ProductState.initial());
          emit(state.copyWith(isLoading: true));
          var response = await productRepository.getData();

          Either<ProductFailure, List<ProductItem>> either = response.match((l) => left(l), (r) => right(r));
          response.fold((l) {
            debugPrint('ProductBloc failed to get data');
          }, (r) {
              debugPrint('ProductBloc success to load data');
              emit(state.copyWith(item: r, isLoading: false, optionFailureOrSuccess: optionOf(either)));
          });
          
        });
    });
  }
}
