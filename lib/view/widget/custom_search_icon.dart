import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.04),
      ),
      width: 46,
      height: 46,
      child: Center(
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 24,
            )),
      ),
    );
  }
}
