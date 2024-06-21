abstract class FormExerciseState {}

class FormExerciseStateInitial extends FormExerciseState {}

class FormExerciseStateLoading extends FormExerciseState {}

class FormExerciseStateError extends FormExerciseState {
  String error;
  FormExerciseStateError({required this.error});
}
