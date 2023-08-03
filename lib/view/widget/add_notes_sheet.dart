import 'package:flutter/material.dart';
import 'package:note/view/widget/custom_text_field.dart';

class AddNotesSheet extends StatelessWidget {
  const AddNotesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 24,
        ),
        CustomTextFiled(
          hintText: "Title",
          maxLine: 1,
        ),
        CustomTextFiled(
          hintText: "Content",
          maxLine: 5,
        ),
        CustomButton(),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
    );
  }
}
