import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assits.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBooksDetailsView);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,

        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.8 / 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Assets.testImage),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Text(
                        "That's a Great Question, I'd Love to Tell You",
                        style: Styles.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text('Elyse Myers(Author)', style: Styles.author),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("19.99 \$", style: Styles.price),
                        SizedBox(width: MediaQuery.of(context).size.width * .1),
                        BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
