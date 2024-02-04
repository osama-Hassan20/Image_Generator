import 'package:flutter/material.dart';
import 'package:image_generator_using_artificial_intelligence/core/constants/color.dart';
import 'package:image_generator_using_artificial_intelligence/core/constants/variable.dart';
import 'package:image_generator_using_artificial_intelligence/core/cubit/cubit.dart';
import 'package:image_generator_using_artificial_intelligence/core/widgets/custom_icon_button.dart';

PreferredSizeWidget? homeViewAppBar(BuildContext context,cubit) {
  print('cubit.imageUrl');
  print(cubit.imageUrl);
  return AppBar(
    backgroundColor: appBarColor,
    title: const Text(
      'Image Generator AI 🤖🔥',
      style: TextStyle(color: Colors.white),
    ),
    centerTitle: true,
    leading: cubit.imageUrl != null
        ? CustomIconButton(
            onPressed: () {
              promptController.clear();
              cubit.restartApp();
            },
            icon: Icons.history_rounded)
        : const SizedBox(),
    actions: [
      cubit.imageUrl != null
          ? CustomIconButton(
              onPressed: () {
                cubit.saveImage();
              },
              icon: Icons.download_outlined)
          : const SizedBox(),
    ],
  );
}
