import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.customIcon});
  final IconData customIcon;

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
          icon: Icon(
            customIcon,
            size: 24,
          ),
        ),
      ),
    );
  }
}
