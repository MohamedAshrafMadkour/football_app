import 'package:flutter/material.dart';

class CustomIconNavigation extends StatelessWidget {
  const CustomIconNavigation({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(Icons.home, size: 36, color: Color(0xff797979)),
    );
  }
}
