import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Cubit/notes_cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/constent.dart';
import 'package:note/view/widget/color_Item.dart';
import 'package:note/view/widget/custom_text_field.dart';
import 'package:note/view/widget/notes_app_bar.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          NotesViewAppBar(
            onperssed: () {
              widget.notes.title = title ?? widget.notes.title;
              widget.notes.subtitle = subTitle ?? widget.notes.subtitle;
              widget.notes.save();
              BlocProvider.of<NotesCubit>(context).fetchDataNotes();
              Navigator.pop(context);
            },
            text: "Edit",
            customIcon: Icons.done,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFiled(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.notes.title,
            maxLine: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: widget.notes.subtitle,
            maxLine: 6,
          ),
          const SizedBox(
            height: 16,
          ),
          EditViewColorList(
            notes: widget.notes,
          )
        ],
      ),
    );
  }
}

class EditViewColorList extends StatefulWidget {
  const EditViewColorList({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<EditViewColorList> createState() => _EditViewColorListState();
}

class _EditViewColorListState extends State<EditViewColorList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kcolors.indexOf(Color(widget.notes.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kcolors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.notes.color = kcolors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kcolors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
