import 'package:flutter/material.dart';
import 'package:image_generator_using_artificial_intelligence/core/constants/variable.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF5F5F5F),
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: TextField(
        controller: promptController,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        decoration: const InputDecoration.collapsed(
          hintText: 'Write the prompt here...',
          hintStyle: TextStyle(
            fontSize: 18,
            color: Color(0xFF9F9F9F),
          ),
        ),
      ),
    );
  }
}