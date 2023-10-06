import 'dart:async';
import 'package:my_tasks/core/repo/sqflite_repo.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteRepoImpl extends SqfliteRepo {
  static String kTasksName = 'tasks.db';
  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDatabase();
      return _db;
    } else {
      return _db;
    }
  }

  @override
  initialDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, kTasksName);
    Database appDatebase = await openDatabase(
      path,
      onCreate: _onCreateDatebase,
      version: 1,
      onUpgrade: _onUpgradeDatebase,
    );
    return appDatebase;
  }

  @override
  insertDatabaseItem(
      {required String table, required Map<String, Object?> values}) async {
    Database? database = await db;
    int response = await database!.insert(table, values);
    return response;
  }

  @override
  readDatabase({required String table}) async {
    Database? database = await db;
    List<Map<String, Object?>> response = await database!.query(table);
    return response;
  }

  @override
  updateDatabaseItem(
      {required String table,
      required Map<String, Object?> values,
      required String whereData}) async {
    Database? database = await db;
    int resonse = await database!.update(table, values, where: whereData);
    return resonse;
  }

  @override
  deletDatabaseItem({required String table, required String whereData}) async {
    Database? database = await db;
    int response = await database!.delete(table, where: whereData);
    return response;
  }

  FutureOr<void> _onUpgradeDatebase(db, oldVersion, newVersion) async {
    print('On Up Grade =======================');
    await db.execute("ALTER TABLE notes ADD color TEXT");
  }

  FutureOr<void> _onCreateDatebase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE "tasks"(
        "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        "title" TEXT NOT NULL,
        "task" TEXT NOT NULL,
        "time" TEXT NOT NULL,
        "date" TEXT NOT NULL,
        "done" INTEGER NOT NULL
      )
    ''');
    print('============ on create database is success ============');
  }
}
