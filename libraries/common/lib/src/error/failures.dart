import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.serverFailure(dynamic error) = _ServerFailure;

  const factory Failure.userNotFound() = _UserNotFound;

  const factory Failure.cacheFailure() = _CacheFailure;

  const factory Failure.emptyResponse() = _EmptyResponse;
}
