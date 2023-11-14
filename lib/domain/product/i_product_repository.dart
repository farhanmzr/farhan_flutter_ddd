
import 'package:farhan_flutter_ddd/domain/product/product_failure.dart';
import 'package:farhan_flutter_ddd/infrastructure/product/product_item.dart';
import 'package:fpdart/fpdart.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, List<ProductItem>>> getData();
}