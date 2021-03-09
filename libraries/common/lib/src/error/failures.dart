import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.serverFailure(dynamic exception) = _ServerFailure;
  const factory Failure.clientFailture(dynamic exception) = _ClientFailure;
}
