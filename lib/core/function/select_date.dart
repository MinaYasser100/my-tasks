import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Future<void> selectDate(
    BuildContext context, TextEditingController dateController) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
  );

  if (picked != null && picked != DateTime.now()) {
    dateController.text = DateFormat('MM/dd/yyyy').format(picked);
  }
}
