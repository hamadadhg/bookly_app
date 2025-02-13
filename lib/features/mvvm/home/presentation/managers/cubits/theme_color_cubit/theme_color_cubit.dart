import 'package:bookly_app/core/utils/styles/style_to_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeColorCubit extends Cubit<ThemeData> {
//this cubit for themeColorMode and the ThemeData consider a State, and it has two states, so you don't need to create state file
  ThemeColorCubit()
      : super(
          ThemeData.dark().copyWith(
            scaffoldBackgroundColor: StyleToColors.deepPurpleColor,
          ),
        );
//the initial state is darkMode
  void toggleThemeColor() {
    emit(
      state.brightness == Brightness.dark
          ? ThemeData.light()
          : ThemeData.dark().copyWith(
              scaffoldBackgroundColor: StyleToColors.deepPurpleColor,
            ),
    );
  }
//state.brightness check about what's the ThemeColorMode now, you can this because ThemeData consider a State
//this method i will trigger in onPressed in IconButton so when you click the themeColorMode will change
}
