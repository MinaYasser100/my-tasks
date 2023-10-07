import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';

AppBar customAppBar({
  required String title,
  required void Function()? onPressed,
}) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    foregroundColor: Colors.white,
    title: Text(title),
    centerTitle: true,
    leading: IconButton(
        onPressed: onPressed, icon: const Icon(Icons.arrow_back_rounded)),
  );
}
