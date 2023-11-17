
import 'package:farhan_flutter_ddd/domain/product/i_product_repository.dart';
import 'package:farhan_flutter_ddd/domain/product/product_failure.dart';
import 'package:farhan_flutter_ddd/infrastructure/core/i_network_service.dart';
import 'package:farhan_flutter_ddd/infrastructure/core/network_service.dart';
import 'package:farhan_flutter_ddd/infrastructure/product/product_item.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/src/either.dart';

class ProductRepository implements IProductRepository {
  
  final INetworkService _networkService = NetworkService();

  @override
  Future<Either<ProductFailure, List<ProductItem>>> getData() async {
    
    debugPrint('flow ProductRepository START');
    var response = await _networkService.getData(path: '?offset=0&limit=10');
    
    return response.match((l){
      return left(const ProductFailure.failed());
    }, (r) {
      debugPrint('flow ProductRepository has response');
      print('hws f $r');
      List datas = r as List;
      print('\n\n');
      print('hws f $datas');

      if (datas.isNotEmpty) {
        List<ProductItem> items =
        List<ProductItem>.from(datas.map((e) => ProductItem.fromJson(e))).toList();
        debugPrint('ProductRepository Success to mapping json into list ProductItem'); 
        return right(items);
      }
      debugPrint('ProductRepository Failed to mapping json into list ProductItem'); 
      return left(const ProductFailure.noData());

    });
  }
}