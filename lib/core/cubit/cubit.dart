import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_generator_using_artificial_intelligence/core/cubit/state.dart';
import '../utils/api_keys.dart';
import '../utils/api_service.dart';

class ProjectCubit extends Cubit<ProjectStates> {
  ProjectCubit() : super(ProjectInitialState());

  static ProjectCubit get(context) => BlocProvider.of(context);

  String? imageUrl;
  List<String>? imageUrlTwo;

  void generateImage(searchText) {
    imageUrl = null;
    emit(GenerateImageLoadingState());
    http
        .post(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'prompt': searchText,
        'size': '1024x1024',
      }),
    )
        .then((value) {
      var data = json.decode(value.body);

      imageUrl = data['data'][1]['url'];

      if (kDebugMode) {
        print('_imageUrl = ');
        print(imageUrl);
      }
      emit(GenerateImageSuccessState());
    }).catchError((error) {
      emit(GenerateImageErrorState());
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  void saveImage() {
    emit(SaveImageLoadingState());
    ApiService().get(url: imageUrl!).then((value) async {
      final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(value.data),
        quality: 80,
      );
      emit(SaveImageSuccessState());
      if (kDebugMode) {
        print(result);
      }
    }).catchError((error) {
      emit(SaveImageErrorState());
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  void restartApp() {
    imageUrl = null;
    emit(RestartAppState());
  }
}
