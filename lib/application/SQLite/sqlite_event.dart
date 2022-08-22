part of 'sqlite_bloc.dart';

@freezed
class SQLiteEvent with _$SQLiteEvent {
  const factory SQLiteEvent.initializeDatabase() = _InitializeDatabase;
  const factory SQLiteEvent.getFilePath({
    required FileLocation filePath,
  }) = _GetFilePath;
  const factory SQLiteEvent.setFilePath({
    required FileLocation filePath,
  }) = _SetFilePath;
}
