import 'package:bloc/bloc.dart';
import 'package:treino_app/pages/form_exercise/bloc/form_exercise_event.dart';
import 'package:treino_app/pages/form_exercise/bloc/form_exercise_state.dart';
import 'package:treino_app/pages/form_exercise/usecase/form_exercise_usecase.dart';

class FormExerciseBloc extends Bloc<FormExerciseEvent, FormExerciseState> {
  FormExerciseUseCase formExerciseUseCase = FormExerciseUseCaseImplementation();

  FormExerciseBloc() : super(FormExerciseStateInitial()) {
    on<FormExerciseEventSendForm>(_sendForm);
  }

  void _sendForm(FormExerciseEventSendForm event,
      Emitter<FormExerciseState> emitter) async {
    emitter(FormExerciseStateLoading());
    try {
      await formExerciseUseCase.call(exerciseModel: event.exerciseModel);
      emitter(FormExerciseStateInitial());
    } catch (e) {
      emitter(FormExerciseStateError(error: e.toString()));
    }
  }
}
