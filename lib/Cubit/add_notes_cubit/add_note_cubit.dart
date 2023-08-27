import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/constent.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color? color = const Color.fromARGB(255, 239, 46, 46);
  addNotes(NoteModel notes) async {
    emit(AddNoteLoding());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      notes.color = color!.value;
      await notesbox.add(notes);
      emit(AddNoteSucces());
    } catch (e) {
      emit(AddNoteFaliuer(e.toString()));
    }
  }
}
