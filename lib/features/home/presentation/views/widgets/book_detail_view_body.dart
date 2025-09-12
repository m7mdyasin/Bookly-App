import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/box_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_cover_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                const SizedBox(height: 30),
                SizedBox(width: size.width * .4, child: CustomBookCoverCard()),
                const SizedBox(height: 30),
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
                const SizedBox(height: 7),
                BookRating(),
                const SizedBox(height: 35),
                BoxAction(),
                const SizedBox(height: 35),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text('You can also like', style: Styles.title),
                  ),
                ),
                const SizedBox(height: 7),

                SimilarBooksListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
