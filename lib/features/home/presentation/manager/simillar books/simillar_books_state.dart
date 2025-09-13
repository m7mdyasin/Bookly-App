part of 'simillar_books_cubit.dart';

sealed class SimillarBooksState extends Equatable {
  const SimillarBooksState();

  @override
  List<Object> get props => [];
}

final class SimillarBooksInitial extends SimillarBooksState {}

final class SimillarBooksLoading extends SimillarBooksState {}

final class SimillarBooksFaliure extends SimillarBooksState {
  final String errMessage;
  const SimillarBooksFaliure(this.errMessage);
}

final class SimillarBooksSucsses extends SimillarBooksState {
  final List<BookModel> books;

  const SimillarBooksSucsses(this.books);
}
