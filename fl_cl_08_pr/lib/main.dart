import 'package:fl_cl_08_pr/27/expanded_try.dart';
import 'package:fl_cl_08_pr/pre-recorded/aspect_ratio_task.dart';
import 'package:fl_cl_08_pr/pre-recorded/expanded_widget.dart';
import 'package:fl_cl_08_pr/pre-recorded/fractiona_sizedbox.dart';
import 'package:fl_cl_08_pr/pre-recorded/layout_builder.dart';
import 'package:fl_cl_08_pr/pre-recorded/media_que.dart';
import 'package:fl_cl_08_pr/pre-recorded/responsive_grid.dart';
import 'package:fl_cl_08_pr/responsive/responsive_home_screen.dart';
import 'package:flutter/material.dart';

import 'assign.dart';
import 'pre-recorded/flexibale_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            ResponsiveWidgetTry() // MediaQueWidget() //FlexibleWidget() // ExpandedWidget(), // FractionSizeBoxExample()
        //LayoutBuilderExample(),  , // AspectRatioTask(), // ExpandedPage(),
        );
  }
}
