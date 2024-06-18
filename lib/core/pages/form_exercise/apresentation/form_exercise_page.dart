import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treino_app/core/models/exercise_model.dart';
import 'package:treino_app/core/pages/form_exercise/bloc/form_exercise_bloc.dart';
import 'package:treino_app/core/pages/form_exercise/bloc/form_exercise_event.dart';
import 'package:treino_app/core/pages/form_exercise/bloc/form_exercise_state.dart';
import 'package:treino_app/core/utils/widgets/dropdown_limbs.dart';
import 'package:treino_app/core/utils/widgets/principal_button.dart';
import 'package:treino_app/core/utils/widgets/text_field_exercise_description.dart';
import 'package:treino_app/core/utils/widgets/text_field_exercise_name.dart';
import 'package:treino_app/core/utils/widgets/text_field_exercise_video.dart';

class FormExercisePage extends StatelessWidget {
  FormExercisePage({super.key});
  TextEditingController textNameController = TextEditingController();
  TextEditingController textUrlController = TextEditingController();
  TextEditingController textExerciseDescriptionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<FormExerciseBloc, FormExerciseState>(
                  builder: (context, state) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFieldExerciseName(
                          textEditingController: textNameController,
                        ),
                        const SizedBox(height: 10),
                        TextFieldExerciseDescription(
                          textEditingController:
                              textExerciseDescriptionController,
                        ),
                        const SizedBox(height: 10),
                        TextFieldExerciseVideo(
                          textEditingController: textUrlController,
                        ),
                        const SizedBox(height: 10),
                        DropdownLimbs(
                          function: (v) {
                            ExerciseModel exerciseModel = ExerciseModel(
                                description: textExerciseDescriptionController
                                    .value.text,
                                nameExercise: textNameController.value.text,
                                limb: v!,
                                urlVideo: textUrlController.value.text);
                            context.read<FormExerciseBloc>().add(
                                FormExerciseEventSendForm(
                                    exerciseModel: exerciseModel));
                            print(v.name);
                          },
                        )
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PrincipalButton(
                  function: () {},
                  nameButton: 'Salvar Exercício',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
