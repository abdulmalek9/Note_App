import 'package:flutter/material.dart';
import 'package:note/view/widget/notes_card.dart';

class ListOfNotes extends StatelessWidget {
  const ListOfNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext, context) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: CustomNotesCard(),
        );
      },
      itemCount: 4,
    );
  }
}
