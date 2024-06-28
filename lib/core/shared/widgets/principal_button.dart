import 'package:flutter/material.dart';
import 'package:treino_app/core/shared/utils/colors_app.dart';

class PrincipalButton extends StatelessWidget {
  PrincipalButton(
      {super.key, required this.function, required this.nameButton});

  Function() function;
  String nameButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          function();
        },
        child: Text(
          nameButton,
          style: const TextStyle(fontSize: 30, color: ColorsApp.textColor),
        ),
      ),
    );
  }
}
