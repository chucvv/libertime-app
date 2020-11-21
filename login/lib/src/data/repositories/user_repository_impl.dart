import 'package:core_packages/core.dart';
import 'package:dartz/dartz.dart';
import 'package:login/src/data/datasources/user_remote_data_source.dart';
import 'package:login/src/domain/entities/user.dart';
import 'package:login/src/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoveDataSource _userRemoveDataSource;

  UserRepositoryImpl(this._userRemoveDataSource);

  @override
  Future<Either<Failure, bool>> addUser(
      String userName, String password) async {
    try {
      await _userRemoveDataSource.addUser(userName, password);
      return Right(true);
    } on ServerException catch (error) {
      return Left(Failure.serverFailure(error));
    }
  }

  @override
  Future<Either<Failure, User>> getUser(
      String userName, String password) async {
    try {
      final User user = await _userRemoveDataSource.getUser(userName, password);
      return Right(user);
    } on NotFoundException {
      return Left(const Failure.userNotFound());
    } catch (err) {
      return Left(Failure.serverFailure(err));
    }
  }
}
