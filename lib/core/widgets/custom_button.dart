import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundcolor,
    required this.textColor,
    this.borderRadius,
  });

  final Color backGroundcolor;
  final Color textColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: backGroundcolor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text("19.99 \$", style: Styles.price.copyWith(color: textColor)),
      ),
    );
  }
}
