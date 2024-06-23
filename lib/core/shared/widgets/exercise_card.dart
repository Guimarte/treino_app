import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:treino_app/core/shared/widgets/text_exercise_card.dart';

class ExerciseCard extends StatelessWidget {
  ExerciseCard(
      {super.key,
      required this.exerciseName,
      required this.exerciseDescription,
      required this.exerciseUrlVideo,
      required this.limb,
      required this.openUrlVideoFunction});
  String exerciseName;
  String exerciseDescription;
  String exerciseUrlVideo;
  String limb;
  Function() openUrlVideoFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 8,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextExerciseCard(
                        description: 'Exercicio: ', text: exerciseName),
                    TextExerciseCard(
                        description: 'Descrição: ', text: exerciseDescription),
                    GestureDetector(
                      onTap: () {
                        openUrlVideoFunction();
                      },
                      child: TextExerciseCard(
                          description: 'Link video: ', text: exerciseUrlVideo),
                    ),
                  ],
                ),
              ),
            ),
            const VerticalDivider(
              endIndent: 10,
              indent: 10,
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextExerciseCard(
                    description: "",
                    text: limb,
                  ),
                  const FaIcon(
                    FontAwesomeIcons.person,
                    size: 80,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
