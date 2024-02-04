import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Enter your prompt",
      style: TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}