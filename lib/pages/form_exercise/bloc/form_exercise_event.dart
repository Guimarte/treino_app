import 'package:treino_app/core/models/exercise_model.dart';

abstract class FormExerciseEvent {}

class FormExerciseEventSendForm extends FormExerciseEvent {
  ExerciseModel exerciseModel;

  FormExerciseEventSendForm({required this.exerciseModel});
}
