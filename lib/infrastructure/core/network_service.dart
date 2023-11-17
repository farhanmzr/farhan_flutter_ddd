import 'package:dio/dio.dart';
import 'package:farhan_flutter_ddd/infrastructure/core/i_network_service.dart';
// ignore: implementation_imports
import 'package:fpdart/src/either.dart';

class NetworkService implements INetworkService{

  final dio = Dio();
  String baseUrl = "https://api.escuelajs.co/api/v1/products";

  @override
  Future<Either<Error, dynamic>> getData({required String path, String? params}) async {
    
    final response = await dio.get("$baseUrl/$path");
    final casting = response.data as List<dynamic>;

    return right(casting);
  }
}