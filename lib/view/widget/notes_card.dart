import 'package:flutter/material.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/edit_view.dart';

class CustomNotesCard extends StatelessWidget {
  const CustomNotesCard({super.key, required this.notes});
  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return const EditView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24.0,
          bottom: 24.0,
          left: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Color(notes.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  notes.subtitle,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                notes.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
