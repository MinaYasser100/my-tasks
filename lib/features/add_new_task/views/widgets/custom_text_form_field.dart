import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/core/utils/function/custom_outline_input_border.dart';

class CustomTextFomField extends StatelessWidget {
  const CustomTextFomField({
    super.key,
    required this.hintText,
    this.maxLiens = 1,
  });
  final String hintText;
  final int? maxLiens;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(),
      maxLines: maxLiens,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: kLigthPrimaryColor,
        filled: true,
        enabledBorder: customOutlineInputBorder(),
        focusedBorder: customOutlineInputBorder(),
      ),
    );
  }
}
