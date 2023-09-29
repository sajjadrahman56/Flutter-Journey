import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatefulWidget {
  const LayoutBuilderExample({super.key});

  @override
  State<LayoutBuilderExample> createState() => _LayoutBuilderExampleState();
}

class _LayoutBuilderExampleState extends State<LayoutBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Layout Builder  ')),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.deepOrange,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ],
            );
          } else {
            return const Center(
              child: Text('Small Screen'),
            );
          }
        }));
    // return Scaffold(
    //     appBar: AppBar(title: const Text('Layout Builder  ')),
    //     body: LayoutBuilder(
    //       builder: (BuildContext context, BoxConstraints constraints) {
    //         if (constraints.maxWidth > 600) {
    //           return const Center(
    //             child: Text('Large Screen'),
    //           );
    //         } else {
    //           return const Center(
    //             child: Text('Small Screen'),
    //           );
    //         }
    //       },
    //     ));
  }
}
