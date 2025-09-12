import 'package:bookly_app/features/home/presntation/views/widgets/best_seller_book_card.dart';
import 'package:flutter/material.dart';

class BestSellerCardListView extends StatelessWidget {
  const BestSellerCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 14,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BestSellerBookCard(),
        );
      },
    );
  }
}
