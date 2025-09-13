import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newset%20books/newst_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerCardListView extends StatelessWidget {
  const BestSellerCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBooksSucsses) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerBookCard(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is NewstBooksFaliure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomProgressIndicator();
        }
      },
    );
  }
}
