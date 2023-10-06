abstract class SqfliteRepo {
  initialDatabase();
  readDatabase({required String table});
  insertDatabaseItem(
      {required String table, required Map<String, Object?> values});
  updateDatabaseItem(
      {required String table,
      required Map<String, Object?> values,
      required String whereData});
  deletDatabaseItem({required String table, required String whereData});
}
