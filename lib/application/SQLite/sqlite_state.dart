part of 'sqlite_bloc.dart';

@freezed
class SQLiteState with _$SQLiteState {
  factory SQLiteState({
    required String filePath,
    required Option<Either<SQLiteFailure, String>>
        getFileLocationFailureOrSuccessOption,
  }) = _SQLite;

  factory SQLiteState.initial() => SQLiteState(
        filePath: "",
        getFileLocationFailureOrSuccessOption: none(),
      );
}
