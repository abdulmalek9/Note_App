import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Cubit/add_notes_cubit/add_note_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/widget/custom_bottun.dart';
import 'package:note/view/widget/custom_text_field.dart';
import 'package:intl/intl.dart';

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
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoding: state is AddNoteLoding ? true : false,
                onTap: () {
                  var currentDate = DateTime.now();
                  var formattedDate =
                      DateFormat("dd-mm-yyyy").format(currentDate);
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var note = NoteModel(
                        title: title!,
                        subtitle: subTitle!,
                        date: formattedDate.toString(),
                        color: Colors.blueAccent.value);
                    BlocProvider.of<AddNoteCubit>(context).addNotes(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
