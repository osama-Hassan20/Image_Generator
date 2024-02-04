import 'package:flutter/material.dart';
import 'package:image_generator_using_artificial_intelligence/core/constants/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: MaterialButton(
        minWidth: MediaQuery.sizeOf(context).width,
        height: 55,
        color: mainColor,
        onPressed:onPressed,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.generating_tokens,
              color: Colors.white,
            ),
            SizedBox(width: 5),
            Text(
              'Generate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}