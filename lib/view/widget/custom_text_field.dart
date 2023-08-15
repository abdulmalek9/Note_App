import 'package:flutter/material.dart';
import 'package:note/view/constent.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, this.hintText, this.maxLine, this.onsaved});
  final String? hintText;
  final int? maxLine;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is requierd";
        } else {
          return null;
        }
      },
      maxLines: maxLine,
      decoration: InputDecoration(
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(color: KprimaryColor),
          hintText: hintText,
          hintStyle: const TextStyle(color: KprimaryColor)),
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
