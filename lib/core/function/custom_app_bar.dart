import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';

AppBar customAppBar({required String title}) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    foregroundColor: Colors.white,
    title: Text(title),
    centerTitle: true,
  );
}
