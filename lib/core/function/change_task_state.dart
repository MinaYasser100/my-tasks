import 'package:flutter/material.dart';
import 'package:my_tasks/core/repo/sqflite_repo_impl.dart';
import 'package:my_tasks/core/utils/route_pages.dart';

Future<void> changeTaskState({
  required BuildContext context,
  required String id,
  required SqfliteRepoImpl sql,
  required int state,
}) async {
  Navigator.pushReplacementNamed(context, RoutePages.kHomeView);
  await sql.updateDatabaseItem(
    table: "tasks",
    values: {"done": state},
    whereData: "id = $id",
  );
}
