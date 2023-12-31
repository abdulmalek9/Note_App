import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Cubit/add_notes_cubit/add_note_cubit.dart';
import 'package:note/view/constent.dart';
import 'package:note/view/widget/color_item.dart';

class ColorListview extends StatefulWidget {
  const ColorListview({super.key});

  @override
  State<ColorListview> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<ColorListview> {
  int? currentIndex = 0;
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
                  BlocProvider.of<AddNoteCubit>(context).color = kcolors[index];
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
