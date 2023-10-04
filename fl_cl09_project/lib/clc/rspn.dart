import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      child: MaterialApp(title: "Test App", home: homeScreenPlay()),
    );
  }
}

class homeScreenPlay extends StatefulWidget {
  const homeScreenPlay({super.key});

  @override
  State<homeScreenPlay> createState() => _homeScreenPlayState();
}

class _homeScreenPlayState extends State<homeScreenPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listen Orientation Change")),
      body: OrientationBuilder(builder: (context, orientation) {
        return Container(
          height: 250,
          color: Colors.blue.shade50,
          child: Center(
            child: Column(
              children: [
                Text(
                  orientation == Orientation.portrait
                      ? "Without sp Current Orientation is Portrait"
                      : "Without sp Current Orientation is Landcape",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                Text(
                  orientation == Orientation.portrait
                      ? "Current Orientation is Portrait"
                      : "Current Orientation is Landcape",
                  style: TextStyle(fontSize: ScreenUtil().setSp(20)),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
