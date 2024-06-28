import 'package:flutter/material.dart';

class TextFieldPassword extends StatelessWidget {
  TextFieldPassword(
      {super.key,
      required this.textEditingController,
      required this.hideText,
      required this.icon});
  TextEditingController textEditingController = TextEditingController();
  bool hideText;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textEditingController,
        cursorColor: const Color(0xFFFFFFFF),
        style: const TextStyle(color: Color(0xFFFFFFFF)),
        obscureText: hideText,
        decoration: InputDecoration(
            suffixIcon: Icon(icon),
            suffixIconColor: const Color(0xFFFFFFFF),
            labelText: 'Senha',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            )),
      ),
    );
  }
}
