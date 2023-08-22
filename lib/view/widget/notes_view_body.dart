import 'package:flutter/material.dart';

import 'package:note/view/widget/list_of_notes.dart';
import 'package:note/view/widget/notes_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(
            height: 31,
          ),
          NotesViewAppBar(
            text: "Notes",
            customIcon: Icons.search,
          ),
          SizedBox(
            height: 14,
          ),
          Expanded(child: ListOfNotes()),
        ],
      ),
    );
  }
}
