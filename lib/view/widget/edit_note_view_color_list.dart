import 'package:flutter/material.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/constent.dart';
import 'package:note/view/widget/color_item.dart';

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
