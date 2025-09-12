import 'package:bookly_app/core/utils/assits.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TranstionLogo extends StatelessWidget {
  const TranstionLogo({
    super.key,
    required Animation<double> fadeAnimation,
    required Animation<double> scaleAnimation,
    required Animation<Offset> slideAnimation,
  }) : _fadeAnimation = fadeAnimation,
       _scaleAnimation = scaleAnimation,
       _slideAnimation = slideAnimation;

  final Animation<double> _fadeAnimation;
  final Animation<double> _scaleAnimation;
  final Animation<Offset> _slideAnimation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: SvgPicture.asset(Assets.logo, color: Colors.white, width: 400),
        ),
      ),
    );
  }
}
