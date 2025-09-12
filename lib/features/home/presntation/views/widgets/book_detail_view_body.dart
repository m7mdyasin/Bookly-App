import 'package:bookly_app/features/home/presntation/views/widgets/custom_app_bar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [CustomAppBarBookDetails()]),
    );
  }
}
