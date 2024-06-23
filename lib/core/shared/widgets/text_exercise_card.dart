import 'package:flutter/material.dart';

class TextExerciseCard extends StatelessWidget {
  TextExerciseCard({super.key, required this.description, required this.text});
  String text;
  String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: description,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold)),
          TextSpan(
              text: text,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.normal))
        ]),
      ),
    );
  }
}
