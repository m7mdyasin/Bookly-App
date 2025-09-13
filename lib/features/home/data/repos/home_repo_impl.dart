import 'package:bookly_app/core/errors/faliure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Faliure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
        endPoints:
            'volumes?q=subject:Programming&Filtering=free-ebooks&Sorting=newst',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          // TODO
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioException(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoints: 'volumes?q=subject:psychology&Filtering=free-ebooks',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          // TODO
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioException(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      var data = await apiService.get(
        endPoints:
            'volumes?q=subject:psychology&Filtering=free-ebooks&Sorting=relevance',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {}
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioException(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }
}
