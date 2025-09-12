import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark(
        // fontFamily: 'Arciform',
      ).copyWith(scaffoldBackgroundColor: kPrimaryColor),

      debugShowCheckedModeBanner: false,
    );
  }
}
