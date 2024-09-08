import 'presentation/ui/detail_page.dart';
import 'presentation/ui/home_page.dart';
import 'presentation/ui/splash_page.dart';
import 'package:flutter/material.dart';
import 'common/styles.dart';
import 'data/model/restaurant.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resto',
      theme: ThemeData(
        textTheme: myTextTheme,
        useMaterial3: true,
      ),
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (context) => const SplashPage(),
        HomePage.routeName: (context) => const HomePage(),
        DetailPage.routeName: (context) => DetailPage(
              restaurant: ModalRoute.of(context)?.settings.arguments as Restaurant,
            ),
      },
    );
  }
}