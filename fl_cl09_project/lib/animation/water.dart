import 'package:flutter/material.dart';

class HomeScreenWater extends StatefulWidget {
  const HomeScreenWater({super.key});

  @override
  State<HomeScreenWater> createState() => _HomeScreenWaterState();
}

class _HomeScreenWaterState extends State<HomeScreenWater> {
  int totalWater = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Water')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total Consume water'),
            Text(
              '$totalWater',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: () {
                  totalWater++;

                  setState(() {});
                },
                child: Text('add')),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Water $index'),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
