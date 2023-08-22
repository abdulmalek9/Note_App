import 'package:flutter/material.dart';
import 'package:note/view/widget/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditViewBody(),
    );
  }
}
