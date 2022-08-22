import 'package:freezed_annotation/freezed_annotation.dart';

part 'filehandling_failures.freezed.dart';

@freezed
class FileHandlingFailure with _$FileHandlingFailure {
  const factory FileHandlingFailure.customError() = CustomError;
    const factory FileHandlingFailure.fileNotFound() = FileNotFound;
}
