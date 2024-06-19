import 'package:flutter/material.dart';

class TextFieldExerciseDescription extends StatelessWidget {
  TextFieldExerciseDescription(
      {super.key, required this.textEditingController});
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: textEditingController,
        decoration: const InputDecoration(
            hintText: "Descreva uma breve explicação sobre o Exercício",
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))),
        maxLines: 2,
      ),
    );
  }
}
