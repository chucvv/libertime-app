import 'package:common/src/result.dart';

abstract class UseCase<Type> {
  Future<Result<Type>> call({dynamic parameter});
}
