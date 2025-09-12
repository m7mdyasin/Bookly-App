import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presntation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presntation/views/widgets/box_action.dart';
import 'package:bookly_app/features/home/presntation/views/widgets/custom_app_bar_book_details.dart';
import 'package:bookly_app/features/home/presntation/views/widgets/custom_book_cover_card.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppBarBookDetails(),
          SizedBox(height: 30),
          SizedBox(width: size.width * 0.5, child: CustomBookCoverCard()),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "That's a Great Question, I'd Love to Tell You",
              style: Styles.title,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            "Elyse Myers(Author)",
            style: Styles.author,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 7),
          BookRating(),
          SizedBox(height: 35),

          BoxAction(),
        ],
      ),
    );
  }
}
