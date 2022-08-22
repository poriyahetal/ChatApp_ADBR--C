import 'package:freezed_annotation/freezed_annotation.dart';

part 'sqlite_failure.freezed.dart';

@freezed
class SQLiteFailure with _$SQLiteFailure {
  const factory SQLiteFailure.customError() = CustomError;
  const factory SQLiteFailure.filePathNotFound() = FilePathNotFound;
}
