import 'package:book_nook_app/core/usecases/usecase.dart';
import 'package:book_nook_app/data/datasources/user/user_local_datasource.dart';
import 'package:book_nook_app/data/datasources/user/user_remote_datasource.dart';
import 'package:book_nook_app/data/entities/user/signup.dart';
import 'package:book_nook_app/data/repositories/user/user_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/models/response_model.dart';
import '../../../core/network/network_info.dart';
import '../../entities/user/user.dart';

class UserRepositoryImpl implements UserRepository {
  final NetworkInfo networkInfo;
  final UserLocalDataSource userLocalDataSource;
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl(
      {required this.networkInfo,
      required this.userLocalDataSource,
      required this.userRemoteDataSource});

  @override
  Future<Either<GenericException, ResponseModel<User>>> signup(
      Signup signup) async {
    if (await networkInfo.isConnected) {
      try {
        final responseCurrentUser = await userRemoteDataSource.signup(signup);
        return Right(responseCurrentUser);
      } on GenericException catch (exception) {
        return Left(exception);
      }
    } else {
      return const Left(CacheException());
    }
  }

  @override
  Future<Either<GenericException, NoParams>> setAppWelcomedUser() async {
    try {
      await userLocalDataSource.cacheIsAppWelcomedUser();
      return Right(NoParams());
    } on GenericException catch (exception) {
      return Left(CacheException(exception));
    }
  }
}
