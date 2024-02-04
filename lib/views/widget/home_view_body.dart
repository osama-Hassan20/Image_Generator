import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_generator_using_artificial_intelligence/core/constants/variable.dart';
import 'package:image_generator_using_artificial_intelligence/core/cubit/cubit.dart';
import 'package:image_generator_using_artificial_intelligence/core/cubit/state.dart';
import 'package:image_generator_using_artificial_intelligence/views/widget/custom_button.dart';
import 'package:image_generator_using_artificial_intelligence/views/widget/custom_text.dart';
import 'package:image_generator_using_artificial_intelligence/views/widget/custom_text_field.dart';
import 'package:lottie/lottie.dart';

import 'custom_view_image.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<ProjectCubit, ProjectStates>(
      listener: (context, state) {},
        builder: (context, state) {
          var cubit = ProjectCubit.get(context);
          return SafeArea(
            child: Column(
              children: [
                const CustomViewImage(),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFF1E1E1E),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(),
                      const SizedBox(height: 10),
                      CustomTextField(),
                      const SizedBox(height: 10),
                      CustomButton(onPressed: (){
                        if(state is! GenerateImageLoadingState){
                          cubit.generateImage(promptController.text);
                        }
                      })
                    ],
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}


