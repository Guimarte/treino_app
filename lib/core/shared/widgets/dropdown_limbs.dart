import 'package:flutter/material.dart';

import '../../enums/limbs.dart';

class DropdownLimbs extends StatelessWidget {
  DropdownLimbs({super.key, required this.function});

  Function(Limbs?) function;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<Limbs>(
          hint: const Text(
            "Escolha o membro desse exercicio",
            textAlign: TextAlign.center,
          ),
          items: Limbs.values
              .map((opcao) => DropdownMenuItem<Limbs>(
                    value: opcao,
                    child: Text(opcao.name),
                  ))
              .toList(),
          onChanged: (Limbs? value) {
            function(value);
          },
        ),
      ),
    );
  }
}
