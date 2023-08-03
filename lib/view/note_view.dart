import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note/view/widget/add_notes_sheet.dart';
import 'package:note/view/widget/list_of_notes.dart';
import 'package:note/view/widget/notes_app_bar.dart';
import 'package:note/view/widget/notes_card.dart';
import 'package:note/view/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              context: context,
              builder: (context) {
                return const AddNotesSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
