import 'package:flutter/material.dart';
import 'package:note/view/constent.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, this.hintText, this.maxLine});
  final String? hintText;
  final int? maxLine;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        maxLines: maxLine,
        decoration: InputDecoration(
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(color: KprimaryColor),
            hintText: hintText,
            hintStyle: const TextStyle(color: KprimaryColor)),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
