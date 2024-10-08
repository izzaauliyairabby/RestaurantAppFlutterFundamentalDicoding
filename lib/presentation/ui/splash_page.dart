import 'dart:async';

import '/common/styles.dart';
import '/presentation/ui/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/splash_page';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  invertColors: true,
                  image: AssetImage(
                    'assets/images/resto.png',
                  ),
                ),
              ),
            ),
            Text(
              '.Resto',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      )),
    );
  }
}