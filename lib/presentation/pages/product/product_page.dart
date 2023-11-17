
import 'package:farhan_flutter_ddd/application/product/bloc/product_bloc.dart';
import 'package:farhan_flutter_ddd/domain/product/i_product_repository.dart';
import 'package:farhan_flutter_ddd/infrastructure/product/product_repository.dart';
import 'package:farhan_flutter_ddd/presentation/pages/product/screen/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductWrapperPage extends StatelessWidget {
  const ProductWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {

    final IProductRepository productRepository = ProductRepository();

    return BlocProvider(
      create: (context) => ProductBloc(productRepository)..add(const ProductEvent.started()),
      child: const ProductScreen(),
    );
  }
}