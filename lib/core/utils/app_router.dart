import 'package:bookly_app/features/home/presntation/views/book_detail_view.dart';
import 'package:bookly_app/features/home/presntation/views/home_view.dart';
import 'package:bookly_app/features/splash/presntation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBooksDetailsView = '/BooksDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBooksDetailsView,
        builder: (context, state) {
          return const BookDetailView();
        },
      ),
    ],
  );
}
