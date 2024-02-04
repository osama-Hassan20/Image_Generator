import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_generator_using_artificial_intelligence/core/cubit/cubit.dart';
import 'package:image_generator_using_artificial_intelligence/core/cubit/state.dart';
import 'package:lottie/lottie.dart';

class CustomViewImage extends StatelessWidget {
  const CustomViewImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: BlocBuilder<ProjectCubit , ProjectStates>(
          builder: (context, state) {
            var cubit = ProjectCubit.get(context);
            return SingleChildScrollView(
              child: cubit.imageUrl == null
                  ? Lottie.asset(
                state is GenerateImageLoadingState
                    ? 'assets/loading.json'
                    : 'assets/ai_logo.json',
              )
                  : ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.network(
                  cubit.imageUrl!,
                  width: MediaQuery.sizeOf(context).width - 30,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}