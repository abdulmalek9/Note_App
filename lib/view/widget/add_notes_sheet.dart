import 'package:flutter/material.dart';
import 'package:note/view/constent.dart';
import 'package:note/view/widget/custom_bottun.dart';
import 'package:note/view/widget/custom_text_field.dart';

class AddNotesSheet extends StatelessWidget {
  const AddNotesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 30,
            ),
            CustomTextFiled(
              hintText: "Title",
              maxLine: 1,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFiled(
              hintText: "Content",
              maxLine: 5,
            ),
            SizedBox(
              height: 80,
            ),
            CustomButton(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
