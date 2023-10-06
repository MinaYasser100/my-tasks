import 'package:flutter/material.dart';

Future<void> selectTime({required context, required timeController}) async {
  TimeOfDay? selectedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );

  if (selectedTime != null) {
    timeController.text = selectedTime.format(context);
  }
}
