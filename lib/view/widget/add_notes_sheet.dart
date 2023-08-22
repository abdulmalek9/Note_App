import 'package:flutter/material.dart';
import 'package:note/Cubit/add_notes_cubit/add_note_cubit.dart';
import 'package:note/view/widget/add_notes_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNotesSheet extends StatelessWidget {
  const AddNotesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFaliuer) {
              print("erorr ${state.errorname}");
            }
            if (state is AddNoteSucces) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return const ModalProgressHUD(
                inAsyncCall: State is AddNoteLoding ? true : false,
                child: AddNotesForm());
          },
        ),
      ),
    );
  }
}
