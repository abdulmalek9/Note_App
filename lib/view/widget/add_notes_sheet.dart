import 'package:flutter/material.dart';
import 'package:note/view/constent.dart';
import 'package:note/view/widget/custom_bottun.dart';
import 'package:note/view/widget/custom_text_field.dart';

class AddNotesSheet extends StatelessWidget {
  const AddNotesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNotesForm(),
      ),
    );
  }
}

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextFiled(
            onsaved: (value) {
              title = value;
            },
            hintText: "Title",
            maxLine: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onsaved: (value) {
              subTitle = value;
            },
            hintText: "Content",
            maxLine: 5,
          ),
          const SizedBox(
            height: 80,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
