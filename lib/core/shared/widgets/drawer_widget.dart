import 'package:flutter/material.dart';
import 'package:treino_app/core/shared/widgets/drawer_option.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerOption(
            descriptionButton: "Cadastrar Exercicio",
            functionButton: () {
              Navigator.pushNamed(context, '/form');
            },
          ),
          DrawerOption(
            descriptionButton: "Cadastrar Exercicio",
            functionButton: () {},
          )
        ],
      ),
    );
  }
}
