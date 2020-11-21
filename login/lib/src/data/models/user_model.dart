import 'package:login/src/domain/entities/user.dart';
import 'package:meta/meta.dart';

class UserModel extends User {
  const UserModel({@required String userId, @required String password})
      : super(userId, password);

  factory UserModel.fromSnapshot(Map<String, dynamic> map) {
    return UserModel(userId: map['username'], password: map['password']);
  }

  @override
  String toString() => "UserModel<$username:$password>";
}
