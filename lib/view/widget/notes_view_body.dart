import 'package:flutter/material.dart';

import 'package:note/view/widget/list_of_notes.dart';
import 'package:note/view/widget/notes_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const [
          SizedBox(
            height: 18,
          ),
          NotesViewAppBar(),
          SizedBox(
            height: 24,
          ),
          Expanded(child: ListOfNotes()),
        ],
      ),
    );
  }
}
