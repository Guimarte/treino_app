import 'package:flutter/material.dart';

import '../../enums/limbs.dart';

class DropdownLimbs extends StatefulWidget {
  DropdownLimbs({super.key, required this.function});

  Function(Limbs?) function;

  @override
  State<DropdownLimbs> createState() => _DropdownLimbsState();
}

class _DropdownLimbsState extends State<DropdownLimbs> {
  Limbs? limbsSelected;

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
          focusColor: Colors.transparent,
          dropdownColor: const Color(0xff666666),
          hint: Text(
            limbsSelected == null
                ? "Escolha o membro desse exercicio"
                : limbsSelected!.name,
            style: const TextStyle(color: Color(0xFFFFFFFF)),
            textAlign: TextAlign.center,
          ),
          items: Limbs.values
              .map((opcao) => DropdownMenuItem<Limbs>(
                    value: opcao,
                    child: Text(
                      opcao.name,
                    ),
                  ))
              .toList(),
          onChanged: (Limbs? value) {
            setState(() {
              limbsSelected = value;
            });
            widget.function(value);
          },
        ),
      ),
    );
  }
}
