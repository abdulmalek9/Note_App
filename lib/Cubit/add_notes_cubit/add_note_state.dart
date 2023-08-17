part of 'add_note_cubit.dart';

@immutable
class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteSucces extends AddNoteState {}

class AddNoteLoding extends AddNoteState {}

class AddNoteFaliuer extends AddNoteState {
  final String errorname;
  AddNoteFaliuer(this.errorname);
}
