import 'package:flutter/material.dart';

class PrincipalButton extends StatelessWidget {
  PrincipalButton(
      {super.key, required this.function, required this.nameButton});

  Function() function;
  String nameButton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        function();
      },
      child: Text(nameButton),
    );
  }
}
