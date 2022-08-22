import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/SQLite/fiilelocation_model.dart';
import 'package:flutter_template/domain/SQLite/i_sqlite_facade.dart';
import 'package:flutter_template/domain/SQLite/sqlite_failure.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';
import 'package:open_file/open_file.dart' as openFile;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

const String tableFileLocation = 'filelocation';
const String columnId = 'id';
const String filename = 'filename';
const String filepath = 'filepath';
const String senderUid = 'senderUid';
const String receiverUid = 'receiverUid';
const String docRef = 'docRef';
const String tableStoreDocRefOffline = 'StoreDocRefOffline';

@LazySingleton(as: ISqliteFacade)
class SQLiteFacade implements ISqliteFacade {
  late Database _database;

  @override
  Future<Either<SQLiteFailure, Unit>> initializeDB() async {
    try {
      // Get a location using getDatabasesPath
      final databasesPath = await getDatabasesPath();
      final String tableFileoOcationPath =
          join(databasesPath, 'fileLocation.db');
      final String tableMessage =
          join(databasesPath, MessageTableContent.dbName);

      _database = await openDatabase(
        tableFileoOcationPath,
        version: 1,
        onCreate: (db, version) async {
          await db
              .execute(
                '''
          CREATE TABLE $tableFileLocation(
            $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
            $filename TEXT NOT NULL,
            $senderUid TEXT NOT NULL,
            $receiverUid TEXT NOT NULL,
            $filepath TEXT NOT NULL
          )
          ''',
              )
              .then((value) => print("db creeated"))
              .onError(
                (error, stackTrace) =>
                    Println("printing db error${error.toString()}"),
              );
          await db
              .execute(
                '''
          CREATE TABLE $tableStoreDocRefOffline(
            $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
            $filename TEXT NOT NULL,
            $senderUid TEXT NOT NULL,
            $receiverUid TEXT NOT NULL,
            $docRef TEXT NOT NULL
          )
          ''',
              )
              .then((value) => print("db creeated"))
              .onError(
                (error, stackTrace) =>
                    Println("printing db error${error.toString()}"),
              );
        },
      );

      return right(unit);
    } on DatabaseException catch (e) {
      print(e.toString());
      return Left(const SQLiteFailure.customError());
    }
  }

  @override
  Future<Either<SQLiteFailure, String>> getFilePath({
    required FileLocation fileLocation,
  }) async {
    final databasesPath = await getDatabasesPath();
    final String tableFileoOcationPath = join(databasesPath, 'fileLocation.db');

    _database = await openDatabase(tableFileoOcationPath);

    final result = await _database.query(
      tableFileLocation,
      where: "filename = ? and senderUid = ? and receiverUid = ?",
      whereArgs: [
        fileLocation.filename,
        fileLocation.senderUid,
        fileLocation.receiverUid,
      ],
    );
    if (result.isNotEmpty) {
      final path = FileLocation.fromMap(result.first as Map<String, dynamic>);
      Println(path.filepath);
      print(result);

      // Close the database
      await _database.close();
      openFile.OpenFile.open(path.filepath);
      return right(path.filepath);
    } else {
      Println("filepath not found");
      Fluttertoast.showToast(
        msg: 'file not found',
        backgroundColor: Kolors.grey,
      );
      return left(const SQLiteFailure.filePathNotFound());
    }
  }

  @override
  Future<Either<SQLiteFailure, Unit>> setFilePath({
    required FileLocation fileLocation,
  }) async {
    print('printing file location in sqlite facade ${fileLocation.filepath}');
    // try {
    final databasesPath = await getDatabasesPath();
    final String path = join(databasesPath, 'fileLocation.db');

    _database = await openDatabase(path);
    final result =
        await _database.insert('$tableFileLocation', fileLocation.toMap());
    print("result: $result");
    await _database.close();
    return right(unit);
  }

  @override
  Future<Either<SQLiteFailure, Unit>> getMessageList(
      {required int limit, required String tableName}) async {
    // print('printing file location in sqlite facade ${fileLocation.filepath}');
    // // try {
    // final databasesPath = await getDatabasesPath();
    // final String path = join(databasesPath, MessageTableContent.dbName);

    // _database = await openDatabase(path);
    // final result =
    //     await _database.insert('$tableFileLocation', fileLocation.toMap());
    // print("result: $result");
    // await _database.close();
    return right(unit);
  }

  @override
  Future<Either<SQLiteFailure, Unit>> getStoryList() {
    // TODO: implement getStoryList
    throw UnimplementedError();
  }
}
