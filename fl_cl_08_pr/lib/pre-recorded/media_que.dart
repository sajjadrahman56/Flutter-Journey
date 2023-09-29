import 'package:fl_cl_08_pr/pre-recorded/style.dart';
import 'package:flutter/material.dart';

class MediaQueWidget extends StatelessWidget {
  MediaQueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var orientation = MediaQuery.of(context).orientation;
    var devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    return Scaffold(
      appBar: AppBar(title: const Text('Media Query')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' Screen Width ${size.width}',
              style: headline(context),
            ),
            Text(' Screen Height ${size.height}'),
            Text(' Screen Ascpect Ratio ${size.aspectRatio}'),
            Text(' Screen Orientation  ${orientation}'),
            Text(' Screen  device pixel  ${devicePixelRatio}'),
          ],
        ),
      ),
    );
  }
}
