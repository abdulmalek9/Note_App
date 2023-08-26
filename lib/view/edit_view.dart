import 'package:flutter/material.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/widget/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditViewBody(
        notes: notes,
      ),
    );
  }
}
