// import 'package:fl_cl_08_pr/27/expanded_try.dart';
// import 'package:fl_cl_08_pr/pre-recorded/aspect_ratio_task.dart';
// import 'package:fl_cl_08_pr/pre-recorded/expanded_widget.dart';
// import 'package:fl_cl_08_pr/pre-recorded/fractiona_sizedbox.dart';
// import 'package:fl_cl_08_pr/pre-recorded/layout_builder.dart';
// import 'package:fl_cl_08_pr/pre-recorded/media_que.dart';
// import 'package:fl_cl_08_pr/pre-recorded/responsive_grid.dart';
// import 'package:fl_cl_08_pr/responsive/responsive_home_screen.dart';

import 'package:fl_cl_08_pr/responsive/home_screen.dart';
import 'package:fl_cl_08_pr/responsive/learn_stack.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
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
        home: StackTodo() // HomeScreen()
        // ResponsiveWidgetTry() // MediaQueWidget() //FlexibleWidget() // ExpandedWidget(), // FractionSizeBoxExample()
        //LayoutBuilderExample(),  , // AspectRatioTask(), // ExpandedPage(),

        );
  }
}
