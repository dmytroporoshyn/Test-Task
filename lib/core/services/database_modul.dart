import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test_task/core/utils/constants.dart';

@module
abstract class DatabaseModule {
  static int get _version => 1;

  @preResolve
  Future<Database> initDB() async {
    String _path = await getDatabasesPath() + 'app_db.db';
    return openDatabase(_path, version: _version,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE ${Constants.addressesTable} (id INTEGER PRIMARY KEY NOT NULL, name STRING, address STRING, zipcode STRING, city STRING)');
    });
  }
}
