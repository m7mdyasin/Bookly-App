import 'package:bookly_app/core/utils/assits.dart';
import 'package:flutter/material.dart';

class CustomBookCoverCard extends StatelessWidget {
  const CustomBookCoverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(Assets.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
