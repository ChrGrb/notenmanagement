import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class PlatformNavigatorPage extends StatefulWidget {
  final Widget child;
  final GlobalKey? navigationKey;


  const PlatformNavigatorPage({ this.navigationKey, required this.child, Key? key }) : super(key: key);

  @override
  State<PlatformNavigatorPage> createState() => _PlatformNavigatorPageState();
}

class _PlatformNavigatorPageState extends State<PlatformNavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) => platformPageRoute(
        settings: settings,
        context: context,
        builder: (BuildContext context) => PlatformScaffold(
          body: widget.child
        ),
      )
    );
  }
}