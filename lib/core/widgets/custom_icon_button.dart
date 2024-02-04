import 'package:flutter/material.dart';
import 'package:image_generator_using_artificial_intelligence/core/constants/color.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key, required this.onPressed, required this.icon});

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: mainColor,
      ),
    );
  }
}
