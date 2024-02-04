
abstract class ProjectStates {}

class ProjectInitialState extends ProjectStates{}
class GenerateImageLoadingState extends ProjectStates{}
class GenerateImageSuccessState extends ProjectStates{}
class GenerateImageErrorState extends ProjectStates{}

class SaveImageLoadingState extends ProjectStates{}
class SaveImageSuccessState extends ProjectStates{}
class SaveImageErrorState extends ProjectStates{}



class RestartAppState extends ProjectStates{}
