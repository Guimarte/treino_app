import 'package:bloc/bloc.dart';
import 'package:treino_app/core/pages/form_exercise/bloc/form_exercise_event.dart';
import 'package:treino_app/core/pages/form_exercise/bloc/form_exercise_state.dart';

class FormExerciseBloc extends Bloc<FormExerciseEvent, FormExerciseState> {
  FormExerciseBloc() : super(FormExerciseStateInitial()) {
    on<FormExerciseEventSendForm>(_sendForm);
  }

  void _sendForm(FormExerciseEventSendForm event,
      Emitter<FormExerciseState> emitter) async {
    print(event.exerciseModel.description);
  }
}
