import 'package:fpdart/fpdart.dart';

abstract class INetworkService {
  Future<Either<Error, dynamic>> getData ({
    required String path,
    String? parameter,
  });
}