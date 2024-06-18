import 'package:flutter/material.dart';

class TextFieldExerciseName extends StatelessWidget {
  TextFieldExerciseName({super.key, required this.textEditingController});
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: const InputDecoration(
        labelText: "Exercício",
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      ),
    );
  }
}
