import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Cubit/notes_cubit/notes_cubit.dart';
import 'package:note/view/widget/list_of_notes.dart';
import 'package:note/view/widget/notes_app_bar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchDataNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
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
      },
    );
  }
}
