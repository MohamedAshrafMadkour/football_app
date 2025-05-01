import 'package:flutter/material.dart';

class CustomIconNavigation extends StatelessWidget {
  const CustomIconNavigation({
    super.key,
    required this.icon,
    this.onPressed,
    required this.isActive,
  });
  final IconData icon;
  final void Function()? onPressed;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: isActive ? 36 : 30,
        color: isActive ? Colors.white : const Color(0xff797979),
      ),
    );
  }
}
