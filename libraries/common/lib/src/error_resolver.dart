class ErrorResolver {
  final String message;
  final AppErrorType type;

  ErrorResolver._(this.message, this.type);

  factory ErrorResolver(Exception error) {
    return ErrorResolver._(error.toString(), AppErrorType.unauthorized);
  }

  @override
  String toString() {
    return 'Error $message, type = ${type}';
  }
}

enum AppErrorType {
  network,
  badRequest,
  unauthorized,
  cancel,
  timeout,
  server,
  unknown,
}
