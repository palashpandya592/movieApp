import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/color_constants.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({required this.child});

  final Widget child;

  static ThemeData themeColors(BuildContext context) => ThemeData(
        platform: Theme.of(context).platform,
        fontFamily: 'Poppins',
        /*  primarySwatch: AppColor.primary_blue[500],
    accentIconTheme: Theme.of(context).accentIconTheme.copyWith(color: accentColor),
    accentColor: accentColor,*/
        canvasColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
            elevation: 0,
            color: ColorConstants.primaryColor,
            centerTitle: true),
        textTheme: Theme.of(context).textTheme.copyWith(
              bodySmall: const TextStyle(color: Colors.white, fontSize: 22),
            ),
        /*floatingActionButtonTheme:
    Theme.of(context).floatingActionButtonTheme.copyWith(
      backgroundColor: accent,
    ),*/
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              textTheme: ButtonTextTheme.normal,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ), colorScheme: ColorScheme.light(primary: Colors.white),
      );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.themeColors(context),
      child: this.child,
    );
  }
}
