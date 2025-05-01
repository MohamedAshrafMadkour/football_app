import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ManageStateCubit extends Cubit<ThemeMode> {
  ManageStateCubit() : super(ThemeMode.system);

  Future<void> setLight({required bool isDark}) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool('isDark', isDark);
    emit(isDark ? ThemeMode.dark : ThemeMode.light);
  }

  Future<void> getLight() async {
    final pref = await SharedPreferences.getInstance();
    final isDark = pref.getBool('isDark');

    if (isDark == null) {
      emit(ThemeMode.system);
    } else {
      emit(isDark ? ThemeMode.dark : ThemeMode.light);
    }
  }
}
