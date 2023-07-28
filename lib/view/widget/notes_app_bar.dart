import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'custom_search_icon.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
