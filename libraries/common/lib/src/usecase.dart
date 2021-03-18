import 'package:common/src/result.dart';

abstract class UseCase<InputType, ReturnType> {
  Future<Result<ReturnType>> call(InputType value);
}

class NoParams {}
