import 'package:bookly_app/core/utils/assits.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [SvgPicture.asset(Assets.logo, color: Colors.white)],
    );
  }
}
