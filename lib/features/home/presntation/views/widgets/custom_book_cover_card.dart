import 'package:bookly_app/core/utils/assits.dart';
import 'package:flutter/material.dart';

class CustomBookCoverCard extends StatelessWidget {
  const CustomBookCoverCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .32,
      width: size.width * .53,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(Assets.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
