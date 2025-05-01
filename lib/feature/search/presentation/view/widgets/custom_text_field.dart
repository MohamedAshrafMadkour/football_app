import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/feature/search/presentation/manager/search_about_player/search_about_player_cubit.dart';
import 'package:go_router/go_router.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      onSubmitted: (query) {
        if (query.trim().isNotEmpty) {
          context.read<SearchAboutPlayerCubit>().getPlayerSearch(
            playerName: query.trim(),
          );
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF1F1F1),
        contentPadding: const EdgeInsets.symmetric(vertical: 24),
        prefixIcon: IconButton(
          onPressed: () {
            GoRouter.of(context).push(NavigationRouter.kHomeView);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        suffixIcon:
            controller.text.isNotEmpty
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      controller.clear();
                    });
                  },
                  icon: const Icon(Icons.clear, color: Colors.black),
                )
                : IconButton(
                  onPressed: () {
                    if (controller.text.trim().isNotEmpty) {
                      setState(() {
                        context.read<SearchAboutPlayerCubit>().getPlayerSearch(
                          playerName: controller.text.trim(),
                        );
                      });
                    }
                  },
                  icon: const Icon(Icons.search, color: Colors.black),
                ),
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.black),
        border: customOutlineInputBorder(color: Colors.black),
        focusedBorder: customOutlineInputBorder(color: const Color(0xff004466)),
        enabledBorder: customOutlineInputBorder(color: const Color(0xff004466)),
      ),
    );
  }

  OutlineInputBorder customOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color, width: 2),
    );
  }
}
