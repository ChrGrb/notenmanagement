import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

const double BORDER_RADIUS = 20;
List<BoxShadow>? boxShadowGenerator(BuildContext context) {
  return MediaQuery.of(context).platformBrightness == Brightness.light ? [BoxShadow(
    color: Colors.grey.withOpacity(0.2),
    spreadRadius: 2,
    blurRadius: 4,
    offset: const Offset(0, 3), // changes position of shadow
  )]
      : null;
}

Color textColorGenerator(context) {
  return platformThemeData(
      context,
      material: (theme) => theme.textTheme.bodySmall?.color ?? Colors.black.withOpacity(0.9),
      cupertino: (theme) => theme.textTheme.textStyle.color ?? CupertinoColors.black.withOpacity(0.9)
  );
}

Color backgroundColorGenerator(context) {
  return platformThemeData(
      context,
      material: (theme) => theme.backgroundColor,
      cupertino: (theme) => theme.barBackgroundColor
  );
}
const TextStyle TEXT_BOLD = TextStyle(fontWeight: FontWeight.bold);
const TextStyle TEXT_SUB_HEADLINE =
TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.normal);
const TextStyle TEXT_HEADLINE =
TextStyle(color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold);


const PRIMARY_COLOR = Color.fromRGBO(0xF2, 0x99, 0x4A, 1.0);
const SECONDARY_COLOR = Color.fromRGBO(0xF3, 0xB6, 0x7F, 1.0);
const SUBHEADLINE_COLOR = Colors.grey;

const NEWS_API_URL = 'https://api.newscatcherapi.com/v2/search?q=Apple&countries=US';
const NEWS_API_KEY = 'QAU84WMYXAHZNqyh-b0sxX74AfKAA_7PohOAcKhTf-E';