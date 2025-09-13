import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewsetBooks() async {
    emit(NewstBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (faliure) => emit(NewstBooksFaliure(faliure.errMessage)),
      (books) => emit(NewstBooksSucsses(books)),
    );
  }
}
