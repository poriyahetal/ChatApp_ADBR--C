// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/SQLite/fiilelocation_model.dart';
import 'package:flutter_template/domain/SQLite/i_sqlite_facade.dart';
import 'package:flutter_template/domain/SQLite/sqlite_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sqlite_event.dart';
part 'sqlite_state.dart';
part 'sqlite_bloc.freezed.dart';

@injectable
class SQLiteBloc extends Bloc<SQLiteEvent, SQLiteState> {
  SQLiteBloc(this._iSqliteFacade) : super(SQLiteState.initial());

  final ISqliteFacade _iSqliteFacade;

  @override
  Stream<SQLiteState> mapEventToState(
    SQLiteEvent event,
  ) async* {
    yield* event.map(
      initializeDatabase: (e) async* {
        final opt = await _iSqliteFacade.initializeDB();
      },
      getFilePath: (e) async* {
        final opt = await _iSqliteFacade.getFilePath(
          fileLocation: e.filePath,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            getFileLocationFailureOrSuccessOption: some(
              left(failure),
            ),
          ),
          (getFileLocation) => state.copyWith(
            getFileLocationFailureOrSuccessOption: some(
              right(getFileLocation),
            ),
          ),
        );
        yield state.copyWith(
          getFileLocationFailureOrSuccessOption: none(),
        );
      },
      setFilePath: (e) async* {
        final opt = await _iSqliteFacade.setFilePath(
          fileLocation: e.filePath,
        );
      },
    );
  }
}
