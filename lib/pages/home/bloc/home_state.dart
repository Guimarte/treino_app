import 'package:treino_app/core/models/exercise_model.dart';

abstract class HomeState {}

class HomeStateInitial extends HomeState {}

class HomeStateLoading extends HomeState {}

class HomeStateLoadSucess extends HomeState {
  List<ExerciseModel> exerciseList;
  HomeStateLoadSucess({required this.exerciseList});
}
