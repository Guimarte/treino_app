import 'package:treino_app/core/models/exercise_model.dart';
import 'package:treino_app/core/repositories/exercise_repositories/exercise_repository.dart';

abstract class PutFormExerciseUseCase {
  Future call({required ExerciseModel exerciseModel});
}

class PutFormExerciseUseCaseImplementation implements PutFormExerciseUseCase {
  ExerciseRepository exerciseRepository = ExerciseRepository();

  @override
  Future call({required ExerciseModel exerciseModel}) async {
    await exerciseRepository.insertNewExercise(exerciseModel);
  }
}
