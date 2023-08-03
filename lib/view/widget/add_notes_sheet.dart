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
        CustomTextFiled(),
      ],
    );
  }
}
