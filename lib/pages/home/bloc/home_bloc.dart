import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treino_app/core/models/exercise_model.dart';
import 'package:treino_app/pages/home/bloc/home_event.dart';
import 'package:treino_app/pages/home/bloc/home_state.dart';
import 'package:treino_app/pages/home/usecase/get_exercise_list_usecase.dart';
import 'package:treino_app/pages/home/usecase/open_video_usecase.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeStateInitial()) {
    on<HomeLoadListEvent>(_getExerciseModelList);
    on<HomeOpenVideoEvent>(_openUrlVideo);
  }
  void _getExerciseModelList(
      HomeLoadListEvent event, Emitter<HomeState> emitter) async {
    GetExerciseListUseCaseImplementation getExerciseListUseCaseImplementation =
        GetExerciseListUseCaseImplementation();
    List<ExerciseModel> listExerciseModel = [];
    emitter(HomeStateLoading());
    try {
      listExerciseModel = await getExerciseListUseCaseImplementation.call();
      if (listExerciseModel.isNotEmpty) {
        emitter(HomeStateLoadSucess(exerciseList: listExerciseModel));
      }
    } catch (e) {}
  }

  void _openUrlVideo(
      HomeOpenVideoEvent event, Emitter<HomeState> emitter) async {
    OpenVideoUsecaseImplementation openVideoUsecaseImplementation =
        OpenVideoUsecaseImplementation();
    try {
      openVideoUsecaseImplementation.call(url: event.url);
    } catch (e) {}
  }
}
