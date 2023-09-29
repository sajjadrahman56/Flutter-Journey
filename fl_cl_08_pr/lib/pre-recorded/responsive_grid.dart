import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ResponsiveWidgetTry extends StatelessWidget {
  const ResponsiveWidgetTry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Responsive Widget'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildGridList(),
              ],
            ),
          ),
        ));
  }

  // region widgets creation methods

  Widget _buildGridList() {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          lg: 12,
          xs: 10,
          child: Container(
            height: 100,
            alignment: Alignment(0, 0),
            color: Colors.purple,
            child: Text("lg : 12 \n xs : 10"),
          ),
        ),
        ResponsiveGridCol(
          xs: 6,
          md: 3,
          child: Container(
            height: 150,
            alignment: Alignment(0, 0),
            color: Colors.green,
            child: Text("xs : 6 \r\nmd : 3"),
          ),
        ),
        ResponsiveGridCol(
          xs: 6,
          md: 3,
          child: Container(
            height: 100,
            alignment: Alignment(0, 0),
            color: Colors.blue,
            child: Text("xs : 6 \r\nmd : 3"),
          ),
        ),
        ResponsiveGridCol(
          xs: 6,
          md: 3,
          child: Container(
            height: 100,
            alignment: Alignment(0, 0),
            color: Colors.blue,
            child: Text("xs : 6 \r\nmd : 3"),
          ),
        ),
        ResponsiveGridCol(
          xs: 6,
          md: 3,
          child: Container(
            height: 100,
            alignment: Alignment(0, 0),
            color: Colors.black,
            child: Text("xs : 6 \r\nmd : 3"),
          ),
        ),
        ResponsiveGridCol(
          xs: 8,
          md: 3,
          child: Container(
            height: 100,
            color: Colors.deepOrange,
            child: Text("xs : 8 \r\nmd : 3"),
          ),
        ),
        ResponsiveGridCol(
          xs: 4,
          md: 3,
          child: Container(
            height: 100,
            color: Colors.pink,
            child: Text("xs : 4 \r\nmd : 3"),
          ),
        ),
      ],
    );
  }
}
