import 'package:flutter/material.dart';
import 'package:autotsk_app/utilities/colors_scheme.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPassW;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput(
      {super.key,
      required this.textEditingController,
      this.isPassW = false, // default value
      required this.hintText,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        fillColor: blueColor,
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8.0),
        hintStyle: TextStyle(
          color: primaryColor,
        ),
      ),
      keyboardType: textInputType,
      obscureText: isPassW,
    );
  }
}
