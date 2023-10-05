abstract class SqfliteRepo {
  initialDatabase();
  readDatabase({String table});
  insertDatabaseItem({String table, Map<String, Object?> values});
  updateDatabaseItem(
      {String table, Map<String, Object?> values, String whereData});
  deletDatabaseItem({String table, String whereData});
}
