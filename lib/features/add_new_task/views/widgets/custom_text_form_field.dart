import 'package:flutter/material.dart';
import 'package:my_tasks/core/utils/constant.dart';
import 'package:my_tasks/core/function/custom_outline_input_border.dart';

class CustomTextFomField extends StatelessWidget {
  const CustomTextFomField({
    super.key,
    this.hintText,
    this.maxLiens = 1,
    required this.textEditingController,
  });
  final String? hintText;
  final TextEditingController textEditingController;
  final int? maxLiens;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
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
