part of 'newst_books_cubit.dart';

sealed class NewstBooksState extends Equatable {
  const NewstBooksState();

  @override
  List<Object> get props => [];
}

final class NewstBooksInitial extends NewstBooksState {}

final class NewstBooksLoading extends NewstBooksState {}

final class NewstBooksFaliure extends NewstBooksState {
  final String errMessage;
  const NewstBooksFaliure(this.errMessage);
}

final class NewstBooksSucsses extends NewstBooksState {
  List<BookModel> books;
  NewstBooksSucsses(this.books);
}
