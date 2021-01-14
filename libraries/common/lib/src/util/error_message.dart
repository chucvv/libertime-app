import '../error/failures.dart';

String mapError(Failure e) {
  return e.when(
      serverFailure: (e) => 'Hệ thống có lỗi $e',
      userNotFound: () => 'Bạn cần đăng kí tài khoản trước khi đăng nhập',
      cacheFailure: () => 'Lỗi caching',
      emptyResponse: () => 'Empty workspace');
}
