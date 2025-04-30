import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textAlign: TextAlign.center,
        errorMessage,
        style: Styles.textMedium14,
      ),
    );
  }
}
