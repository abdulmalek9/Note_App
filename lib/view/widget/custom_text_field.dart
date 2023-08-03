import 'package:flutter/material.dart';
import 'package:note/view/constent.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  color: KprimaryColor,
                ))),
      ),
    );
  }
}
