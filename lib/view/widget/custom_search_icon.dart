import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.customIcon, this.onperssed});
  final IconData customIcon;
  final void Function()? onperssed;
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
          onPressed: onperssed,
          icon: Icon(
            customIcon,
            size: 24,
          ),
        ),
      ),
    );
  }
}
