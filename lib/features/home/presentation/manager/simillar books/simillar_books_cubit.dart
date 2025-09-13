import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'simillar_books_state.dart';

class SimillarBooksCubit extends Cubit<SimillarBooksState> {
  SimillarBooksCubit(this.homeRepo) : super(SimillarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimillarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (faliure) => emit(SimillarBooksFaliure(faliure.errMessage)),
      (books) => emit(SimillarBooksSucsses(books)),
    );
  }
}
