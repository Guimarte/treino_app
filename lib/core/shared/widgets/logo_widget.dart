import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/icon_logo.svg',
      height: 80,
      colorFilter: const ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn),
    );
  }
}
