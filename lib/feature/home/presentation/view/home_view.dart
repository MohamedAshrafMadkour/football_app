import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/manager/cubit/manage_state_cubit.dart';
import 'package:football_scoore_app/core/utils/app_image.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_icon_button.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: Image.asset(Assets.imagesBall),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Football Score',
          style: Styles.textSemiBold21.copyWith(
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : const Color(0xff2e2e3a),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isDark = !isDark;
              });

              BlocProvider.of<ManageStateCubit>(
                context,
              ).setLight(isDark: isDark);
            },
            icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
            color: const Color(0xff797979),
          ),
          const CustomIconButton(icon: Icons.notifications),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
