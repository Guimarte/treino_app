import 'package:treino_app/core/models/exercise_model.dart';
import 'package:treino_app/core/repositories/exercise_repositories/exercise_repository.dart';

abstract class GetExerciseListUsecase {
  Future call();
}

class GetExerciseListUseCaseImplementation implements GetExerciseListUsecase {
  ExerciseRepository exerciseRepository = ExerciseRepository();

  @override
  Future<List<ExerciseModel>> call() async {
    return await exerciseRepository.getListExercises();
  }
}
