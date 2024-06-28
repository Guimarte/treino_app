import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
  TextFieldEmail({super.key, required this.textEditingController});
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textEditingController,
        cursorColor: const Color(0xFFFFFFFF),
        style: const TextStyle(color: Color(0xFFFFFFFF)),
        decoration: InputDecoration(
            labelText: 'E-mail',
            labelStyle: const TextStyle(color: Color(0xFFFFFFFF)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            )),
      ),
    );
  }
}
