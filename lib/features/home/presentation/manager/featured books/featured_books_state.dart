part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeatureBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFaliure extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBooksFaliure(this.errMessage);
}

final class FeaturedBooksSucsses extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksSucsses(this.books);
}
