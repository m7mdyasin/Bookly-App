import 'package:bookly_app/features/home/presntation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presntation/views/widgets/custom_book_cover_card.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), CustomBookCoverCard()]);
  }
}
