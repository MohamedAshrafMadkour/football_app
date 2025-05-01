import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/main/main/presentation/views/widget/custom_icon_navigation.dart';
import 'package:football_scoore_app/feature/home/presentation/view/home_view.dart';
import 'package:football_scoore_app/feature/news/presentation/views/news_app.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  static const List scaffold = [HomeView(), NewsView(), Scaffold(), Scaffold()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        height: MediaQuery.sizeOf(context).height * .090,
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xff222232)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomIconNavigation(
              icon: Icons.home,
              isActive: currentIndex == 0,
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
            CustomIconNavigation(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: Icons.newspaper,
              isActive: currentIndex == 1,
            ),
            CustomIconNavigation(
              icon: Icons.settings,
              isActive: currentIndex == 2,
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
            ),
            CustomIconNavigation(
              icon: Icons.search,
              isActive: currentIndex == 3,
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
      body: scaffold[currentIndex],
    );
  }
}
