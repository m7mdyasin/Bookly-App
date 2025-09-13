import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(
          context,
        ).push(AppRouter.kBooksDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,

        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.8 / 4,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: CustomBookImage(
                  imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
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
                        bookModel.volumeInfo.title!,
                        style: Styles.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      getWords(
                        bookModel.volumeInfo.authors![0].toString(),
                        count: 3,
                      ),
                      style: Styles.author,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("free", style: Styles.price),
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

  String getWords(String text, {int count = 3, bool fromEnd = false}) {
    // نشيل الأقواس
    String cleanText = text.replaceAll('[', '').replaceAll(']', '');

    // نقسم النص لكلمات
    List<String> words = cleanText.split(' ');

    // نحدد نجيب أول أو آخر كلمات
    if (fromEnd) {
      return words.sublist(words.length - count).join(' ');
    } else {
      return words.take(count).join(' ');
    }
  }
}
