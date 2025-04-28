import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const FootballApp());
}

class FootballApp extends StatelessWidget {
  const FootballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
