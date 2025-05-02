import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle textRegular16(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 13,
      color:
          Theme.of(context).brightness == Brightness.dark
              ? const Color(0xffFFFFFF)
              : const Color(0xff2e2e3a),
    );
  }

  static TextStyle textMedium10(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10,
      color:
          Theme.of(context).brightness == Brightness.dark
              ? const Color(0xffFFFFFF)
              : const Color(0xff2e2e3a),
    );
  }

  static TextStyle textMedium9(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 9,
      color:
          Theme.of(context).brightness == Brightness.dark
              ? const Color(0xffFFFFFF)
              : const Color(0xff2e2e3a),
    );
  }

  static TextStyle textSemiBold21(context) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 21,
      color:
          Theme.of(context).brightness == Brightness.dark
              ? const Color(0xffFFFFFF)
              : const Color(0xff2e2e3a),
    );
  }

  static TextStyle textSemiBold18(context) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color:
          Theme.of(context).brightness == Brightness.dark
              ? const Color(0xffFFFFFF)
              : const Color(0xff2e2e3a),
    );
  }

  static TextStyle textBold18(context) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color:
          Theme.of(context).brightness == Brightness.dark
              ? const Color(0xffFFFFFF)
              : const Color(0xff2e2e3a),
    );
  }

  static TextStyle textMedium14(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color:
          Theme.of(context).brightness == Brightness.dark
              ? const Color(0xffFFFFFF)
              : const Color(0xff2e2e3a),
    );
  }
}
