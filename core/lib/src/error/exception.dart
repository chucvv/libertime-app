class ServerException implements Exception {
  final dynamic error;

  ServerException(this.error);

  @override
  String toString() {
    return error.toString();
  }
}

class CacheException implements Exception {}

class NotFoundException implements Exception {}
