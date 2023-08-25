import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Cubit/notes_cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/widget/notes_card.dart';

class ListOfNotes extends StatelessWidget {
  const ListOfNotes({super.key});

  @override
  Widget build(BuildContext context) {
    List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CustomNotesCard(
            notes: notes[index],
          ),
        );
      },
      itemCount: notes.length,
    );
  }
}
