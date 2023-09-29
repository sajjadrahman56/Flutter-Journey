import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Responsive'),
        ),
        body: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.red,
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.amber,
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.pink,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.black,
              ),
            ),
          ],
        ));
  }
}





// 4 ---------------------- Image Add Protriates vs Landscape
/*
      OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 10,
                  child: Container(
                    color: Colors.red,
                    child: Image.network(
                      'https://superstarsbio.com/wp-content/uploads/2018/08/5-24-1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Divider(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  color: Colors.amber,
                  child: FractionallySizedBox(
                    widthFactor: 0.7,
                    heightFactor: 0.3,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            );
          } else {
            return Row(
              children: [
                Expanded(
                  flex: 2,
                  child: AspectRatio(
                    aspectRatio: 16 / 10,
                    child: Container(
                      color: Colors.red,
                      child: Image.network(
                        'https://superstarsbio.com/wp-content/uploads/2018/08/5-24-1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.amber,
                    child: FractionallySizedBox(
                      widthFactor: 0.7,
                      heightFactor: 0.9,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            );
          }
        },
      ),
*/

// 1 ---------------------------- Medial Query 
/*
Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    Size size = MediaQuery.sizeOf(context);
    Orientation orientation = MediaQuery.orientationOf(context);
    List<DisplayFeature> features = MediaQuery.displayFeaturesOf(context);
    print(features);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Responsive'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Device Info\t\n\n'
                'Size: ${size}\n\n'
                'Width: ${size.width}\n\n'
                'Height: ${size.height}\n\n'
                'Aspect Ratio: ${size.aspectRatio}\n\n'
                'finit ${size.isFinite}\n',
              ),
              Text(
                  'Orientation: ${orientation == Orientation.portrait ? 'Portrait' : 'Landscape'}\n\n'),
              Text('${features.map((e) => e.toString()).join('\n')}'),
            ],
          ),
        ));
  }
*/

// 2 ---------------------------- Layout Builder & Wrap
/*
 Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    Size size = MediaQuery.sizeOf(context);
    Orientation orientation = MediaQuery.orientationOf(context);
    List<DisplayFeature> features = MediaQuery.displayFeaturesOf(context);
    print(features);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Responsive'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Device Info\t\n\n'
                  'Size: ${size}\n\n'
                  'Width: ${size.width}\n\n'
                  'Height: ${size.height}\n\n'
                  'Aspect Ratio: ${size.aspectRatio}\n\n'
                  'finit ${size.isFinite}\n',
                ),
                Text(
                    'Orientation: ${orientation == Orientation.portrait ? 'Portrait' : 'Landscape'}\n\n'),
                Text('${features.map((e) => e.toString()).join('\n')}'),
                Container(
                    width: size.width * 0.5,
                    height: size.height * 0.2,
                    color: Colors.red,
                    child: LayoutBuilder(builder: (context, constraints) {
                      print(constraints.maxWidth);
                      print(constraints.minHeight);
                      if (constraints.maxWidth < 100) {
                        return Text(
                            'Mobile View ${constraints.maxWidth} , ${constraints.minHeight}');
                      } else {
                        return Text(
                            'Desktop View ${constraints.maxWidth} , ${constraints.minHeight}');
                      }
                    })),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 5,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s'),
                  ],
                ),
              ],
            ),
          ),
        ));
  } */

  // 3 ------------------------- Circular Image 
  /* 
   body: Column(children: [
        AspectRatio(
          aspectRatio: 16 / 10,
          child: Container(
            color: Colors.red,
            child: Image.network(
              'https://superstarsbio.com/wp-content/uploads/2018/08/5-24-1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        ClipOval(
          clipBehavior: Clip.antiAlias,
          child: Image.network(
            'https://superstarsbio.com/wp-content/uploads/2018/08/5-24-1.jpg',
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://superstarsbio.com/wp-content/uploads/2018/08/5-24-1.jpg',
              ),
            ),
          ),
        )
      ]),
   */