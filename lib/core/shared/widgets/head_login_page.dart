import 'package:flutter/material.dart';

class HeadLoginPage extends StatelessWidget {
  const HeadLoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.4,
      child: Image.asset(
        'assets/images/login_top.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
