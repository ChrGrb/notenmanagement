import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:notenmanagement/assets/constants.dart' as constants;

class GradeCardLarge extends StatefulWidget {
  const GradeCardLarge({Key? key}) : super(key: key);

  @override
  State<GradeCardLarge> createState() => _GradeCardLargeState();
}

class _GradeCardLargeState extends State<GradeCardLarge> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: CupertinoTheme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(constants.BORDER_RADIUS),
          boxShadow: constants.boxShadowGenerator(context)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('ETE Semesternote'),
            Text('05.06.2019'),
            Row(
              children: [
                Text('Note'),
                Text('2')
              ],
            ),
          ],
        )
    );
  }
}
