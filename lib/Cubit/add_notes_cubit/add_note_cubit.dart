import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/constent.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNotes(notes) async {
    emit(AddNoteLoding());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSucces());
      await notesbox.add(notes);
    } catch (e) {
      emit(AddNoteFaliuer(e.toString()));
    }
  }
}
