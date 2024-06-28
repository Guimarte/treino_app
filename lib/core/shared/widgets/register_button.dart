import 'package:flutter/material.dart';
import 'package:treino_app/core/shared/utils/colors_app.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: const Text(
          'Registre-se',
          style: TextStyle(color: ColorsApp.textButtonColor),
        ));
  }
}
