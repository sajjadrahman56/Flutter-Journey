import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StackTodo extends StatefulWidget {
  const StackTodo({super.key});

  @override
  State<StackTodo> createState() => _StackTodoState();
}

class _StackTodoState extends State<StackTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            // Check the sizing information here and return your UI
            if (sizingInformation.deviceScreenType ==
                DeviceScreenType.desktop) {
              return Container(color: Colors.blue);
            }

            if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
              return Container(color: Colors.red);
            }

            if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
              return Container(color: Colors.yellow);
            }

            return Container(color: Colors.purple);
          },
        )

        // OrientationLayoutBuilder(
        //   portrait: (context) => Container(color: Colors.green),
        //   landscape: (context) => Container(color: Colors.pink),
        // ),

        );
  }
}

// 1 ------------------ Stack Uses ------------------
/*
Stack(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            Positioned.fill(
              left: 20,
              top: 30,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 200,
                  width: 220,
                  color: Colors.green,
                ),
              ),
            ),
            Positioned.fill(
                left: 150,
                top: 20,
                child: Stack(children: [
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.blue,
                  ),
                ])),
          ],
        ),
      
*/