import 'package:bookly_app/features/home/presntation/views/widgets/book_detail_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailViewBody()));
  }
}
