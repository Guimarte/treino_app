import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFieldExerciseVideo extends StatelessWidget {
  TextFieldExerciseVideo({super.key, required this.textEditingController});
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: textEditingController,
        keyboardType: TextInputType.url,
        decoration: const InputDecoration(
          labelText: "Video do Exercício",
          suffixIcon: Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(FontAwesomeIcons.youtube),
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        ));
  }
}
