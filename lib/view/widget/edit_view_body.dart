import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note/view/widget/custom_text_field.dart';
import 'package:note/view/widget/notes_app_bar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const [
          SizedBox(
            height: 18,
          ),
          NotesViewAppBar(
            text: "Edit",
            customIcon: Icons.done,
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextFiled(
            hintText: "title",
            maxLine: 1,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            hintText: "Content",
            maxLine: 6,
          )
        ],
      ),
    );
  }
}
