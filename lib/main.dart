import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/router.dart';

void main() {
  runApp(const FootballApp());
}

class FootballApp extends StatelessWidget {
  const FootballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      routerConfig: NavigationRouter.router,
    );
  }
}
