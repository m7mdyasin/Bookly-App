import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_card_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_best_seller_text.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: CustomBestSellerText(),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(child: BestSellerCardListView()),
      ],
    );
  }
}
