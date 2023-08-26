import 'package:flutter/material.dart';
import 'package:note/Cubit/add_notes_cubit/add_note_cubit.dart';
import 'package:note/Cubit/notes_cubit/notes_cubit.dart';
import 'package:note/view/widget/add_notes_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNotesSheet extends StatelessWidget {
  const AddNotesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSucces) {
            BlocProvider.of<NotesCubit>(context).fetchDataNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoding ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(
                child: AddNotesForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
