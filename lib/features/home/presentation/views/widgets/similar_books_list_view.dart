import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/simillar%20books/simillar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_cover_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kBooksDetailsView,
                      extra: state.books[index],
                    );
                  },
                  child: CustomBookCoverCard(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
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
