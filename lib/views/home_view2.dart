import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_generator_using_artificial_intelligence/core/cubit/cubit.dart';
import 'package:image_generator_using_artificial_intelligence/core/cubit/state.dart';
import 'package:image_generator_using_artificial_intelligence/views/widget/home_view_appbar.dart';
import 'package:image_generator_using_artificial_intelligence/views/widget/home_view_body.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class HomeViewTwo extends StatelessWidget {
  const HomeViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectCubit,ProjectStates>(
      listener: (context , state){
        if(state is SaveImageSuccessState){
          showTopSnackBar(
            Overlay.of(context),
            const CustomSnackBar.success(
              message:
              "The image has been saved successfully",
            ),
          );
        }
      },
      builder: (context, state){
        var cubit = ProjectCubit.get(context);
        return Scaffold(
          appBar: homeViewAppBar(context,cubit),
          body: const HomeViewBody(),
        );
      },
    );
  }
}
