import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Cubit/notes_cubit/notes_cubit.dart';
import 'package:note/view/widget/add_notes_sheet.dart';
import 'package:note/view/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
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
      body: BlocProvider(
          create: (context) => NotesCubit(), child: const NotesViewBody()),
    );
  }
}
