import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_generator_using_artificial_intelligence/views/home_view2.dart';
import 'core/cubit/cubit.dart';
import 'core/utils/blocobserver.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(BuildContext context) =>ProjectCubit(),
      lazy: true,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeViewTwo(),
      ),
    );
  }
}