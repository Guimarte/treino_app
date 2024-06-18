import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget {
  DrawerOption(
      {super.key,
      required this.descriptionButton,
      required this.functionButton});
  String descriptionButton;
  Function() functionButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        functionButton();
      },
      child: Text(
        descriptionButton,
      ),
    );
  }
}
