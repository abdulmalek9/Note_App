import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note/view/widget/list_of_notes.dart';
import 'package:note/view/widget/notes_app_bar.dart';
import 'package:note/view/widget/notes_card.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
      ),
    );
  }
}
