import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBestSellerText extends StatelessWidget {
  const CustomBestSellerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Best Seller', style: Styles.title),
        SizedBox(width: 10),
        Icon(FontAwesomeIcons.arrowUp, size: 18),
      ],
    );
  }
}
