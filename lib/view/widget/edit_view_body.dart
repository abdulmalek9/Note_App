import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Cubit/notes_cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/widget/custom_text_field.dart';
import 'package:note/view/widget/edit_note_view_color_list.dart';
import 'package:note/view/widget/notes_app_bar.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            NotesViewAppBar(
              onperssed: () {
                widget.notes.title = title ?? widget.notes.title;
                widget.notes.subtitle = subTitle ?? widget.notes.subtitle;
                widget.notes.save();
                BlocProvider.of<NotesCubit>(context).fetchDataNotes();
                Navigator.pop(context);
              },
              text: "Edit",
              customIcon: Icons.done,
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextFiled(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.notes.title,
              maxLine: 1,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFiled(
              onChanged: (value) {
                subTitle = value;
              },
              hintText: widget.notes.subtitle,
              maxLine: 6,
            ),
            const SizedBox(
              height: 16,
            ),
            EditViewColorList(
              notes: widget.notes,
            ),
            const SizedBox(
              height: 33,
            )
          ],
        ),
      ),
    );
  }
}
