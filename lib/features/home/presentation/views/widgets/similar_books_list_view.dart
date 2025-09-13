import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/simillar%20books/simillar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_cover_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: BlocBuilder<SimillarBooksCubit, SimillarBooksState>(
        builder: (context, state) {
          if (state is SimillarBooksSucsses) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CustomBookCoverCard(
                  imageUrl:
                      'https://templates.mediamodifier.com/5dd94342a9b4f1655132f51d/city-dreams-sci-fi-book-cover-maker.jpg',
                );
              },
            );
          } else if (state is SimillarBooksFaliure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const CustomProgressIndicator();
          }
        },
      ),
    );
  }
}
