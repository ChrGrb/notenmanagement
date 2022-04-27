import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:notenmanagement/assets/constants.dart' as constants;

final themeMaterialLight = ThemeData(
    primaryColor: constants.PRIMARY_COLOR,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 34.0, fontWeight: FontWeight.normal),
      headlineMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal),
      headlineSmall: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal, color: constants.SUBHEADLINE_COLOR),
    )
);

final themeMaterialDark = ThemeData(
    primaryColor: constants.PRIMARY_COLOR,
    brightness: Brightness.dark,
    backgroundColor: Colors.black,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 34.0, fontWeight: FontWeight.normal),
      headlineMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal),
      headlineSmall: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal, color: constants.SUBHEADLINE_COLOR),
    )
);

const themeCupertino = CupertinoThemeData(
    scaffoldBackgroundColor: CupertinoDynamicColor.withBrightness(
        color: CupertinoColors.white,
        darkColor: CupertinoColors.quaternaryLabel
    ),
    barBackgroundColor: CupertinoDynamicColor.withBrightness(
        color: constants.PRIMARY_COLOR,
        darkColor: constants.SECONDARY_COLOR
    ),
    primaryColor: constants.PRIMARY_COLOR,
    textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(color: CupertinoDynamicColor.withBrightness(
            color: CupertinoColors.black,
            darkColor: CupertinoColors.white))
    )
);