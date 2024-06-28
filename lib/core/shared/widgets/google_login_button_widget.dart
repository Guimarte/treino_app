import 'package:flutter/material.dart';

class GoogleLoginButtonWidget extends StatelessWidget {
  GoogleLoginButtonWidget({super.key, required this.function});
  Function() function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.1,
          height: MediaQuery.sizeOf(context).height * 0.05,
          child:
              Image.asset('assets/images/login_google.png', fit: BoxFit.fill)),
    );
  }
}
