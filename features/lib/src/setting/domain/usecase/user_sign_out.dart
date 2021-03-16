import 'package:common/common.dart';
import 'package:features/src/setting/domain/repository/setting_repository.dart';

class UserSignOutUseCase extends UseCase<void> {
  final SettingRepository _repository;

  UserSignOutUseCase(this._repository);
  @override
  Future<Result<void>> call({dynamic parameter}) {
    return Result.guardFuture(_repository.signOut);
  }
}
