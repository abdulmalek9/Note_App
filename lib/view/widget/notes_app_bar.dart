import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'custom_search_icon.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar(
      {super.key, required this.text, required this.customIcon});
  final String text;
  final IconData customIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        Spacer(),
        CustomSearchIcon(
          customIcon: customIcon,
        ),
      ],
    );
  }
}
