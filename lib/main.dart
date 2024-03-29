import 'package:flutter/material.dart';
import 'package:space/pages/category_page.dart';
import 'package:space/pages/detail_page.dart';
import 'package:space/pages/home_page.dart';
import 'package:space/pages/onboarding_page.dart';
import 'package:space/pages/profile_page.dart';
import 'package:space/pages/search_page.dart';
import 'package:space/pages/search_result_page.dart';
import 'package:space/pages/signin_page.dart';
import 'package:space/pages/splash_page.dart';
import 'package:space/pages/wishlist_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SigninPage(),
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/search-result': (context) => SearchResultPage(),
        '/category': (context) => CategoryPage(),
        '/wishlist': (context) => WishlistPage(),
        '/profile': (context) => ProfilePage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}
