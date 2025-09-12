import 'package:bookly_app/core/utils/assits.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.logo, width: 120, color: Colors.white),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ],
      ),
    );
  }
}
