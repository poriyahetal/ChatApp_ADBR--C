import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/SQLite/fiilelocation_model.dart';
import 'package:flutter_template/domain/SQLite/sqlite_failure.dart';

abstract class ISqliteFacade {
  Future<Either<SQLiteFailure, Unit>> initializeDB();
  Future<Either<SQLiteFailure, String>> getFilePath({
    required FileLocation fileLocation,
  });
  Future<Either<SQLiteFailure, Unit>> setFilePath({
    required FileLocation fileLocation,
  });
   Future<Either<SQLiteFailure, Unit>> getMessageList({
    required int limit,
    required String tableName,
  });
   Future<Either<SQLiteFailure, Unit>> getStoryList();
}
