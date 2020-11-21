import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core_packages/core.dart';
import 'package:login/src/data/models/user_model.dart';

abstract class UserRemoveDataSource {
  Future<UserModel> getUser(String userId, String password);

  Future<void> addUser(String userId, String password);
}

class UserRemoveDataSourceImpl extends UserRemoveDataSource {
  final CollectionReference _collectionReference;

  UserRemoveDataSourceImpl(this._collectionReference);

  @override
  Future<void> addUser(String userName, String password) {
    return _collectionReference
        .document(userName)
        .setData({'username': userName, 'password': password}).catchError(
            (err) => {throw ServerException});
  }

  @override
  Future<UserModel> getUser(String userName, String password) {
    return _collectionReference
        .where("username", isEqualTo: userName)
        .where("password", isEqualTo: password)
        .getDocuments()
        .then((QuerySnapshot snapshot) {
      final DocumentSnapshot documentSnapshot = snapshot.documents.firstOrNull;
      if (documentSnapshot == null) {
        throw NotFoundException();
      }
      return UserModel.fromSnapshot(documentSnapshot.data);
    });
  }
}
