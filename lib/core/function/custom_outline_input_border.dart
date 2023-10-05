import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';

OutlineInputBorder customOutlineInputBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: kPrimaryColor,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );
}
