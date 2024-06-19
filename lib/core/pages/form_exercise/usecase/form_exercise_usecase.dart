import 'package:treino_app/core/models/exercise_model.dart';
import 'package:treino_app/core/repositories/exercise_repositories/exercise_repository.dart';

abstract class FormExerciseUseCase {
  Future call({required ExerciseModel exerciseModel});
}

class FormExerciseUseCaseImplementation implements FormExerciseUseCase {
  ExerciseRepository exerciseRepository = ExerciseRepository();

  @override
  Future call({required ExerciseModel exerciseModel}) async {
    await exerciseRepository.insertNewExercise(exerciseModel);
  }
}
