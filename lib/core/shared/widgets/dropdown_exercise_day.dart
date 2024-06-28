import 'package:flutter/material.dart';
import 'package:treino_app/core/enums/exercise_day.dart';

class DropdownExerciseDay extends StatefulWidget {
  DropdownExerciseDay({super.key, required this.function});

  Function(ExerciseDay?) function;

  @override
  State<DropdownExerciseDay> createState() => _DropdownLimbsState();
}

class _DropdownLimbsState extends State<DropdownExerciseDay> {
  ExerciseDay? exerciseDaySelected;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<ExerciseDay>(
          dropdownColor: const Color(0xff666666),
          focusColor: Colors.transparent,
          hint: Text(
            exerciseDaySelected == null
                ? "Escolha o dia do exercicio"
                : exerciseDaySelected!.name,
            style: const TextStyle(color: Color(0xFFFFFFFF)),
            textAlign: TextAlign.center,
          ),
          items: ExerciseDay.values
              .map((opcao) => DropdownMenuItem<ExerciseDay>(
                    value: opcao,
                    child: Text(
                      opcao.name,
                    ),
                  ))
              .toList(),
          onChanged: (ExerciseDay? value) {
            setState(() {
              exerciseDaySelected = value;
            });
            widget.function(value);
          },
        ),
      ),
    );
  }
}
