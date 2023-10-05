import 'package:fl_cl09_project/water/custome_widget.dart';
import 'package:flutter/material.dart';

class WaterScreen extends StatefulWidget {
  const WaterScreen({super.key});

  @override
  State<WaterScreen> createState() => _WaterScreenState();
}

class _WaterScreenState extends State<WaterScreen> {
  final TextEditingController _amountOfTEController =
      TextEditingController(text: '1');
  List<WaterTrack> waterTrackList = [];
  int totalConsume = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monthly Water Tracker'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              flex: 50,
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Text('Total Consume',
                                style: Theme.of(context).textTheme.titleLarge),
                            Text('$totalConsume',
                                style: (totalConsume < 990)
                                    ? Theme.of(context).textTheme.displayLarge
                                    : Theme.of(context).textTheme.displaySmall),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 50,
                                  child: TextField(
                                    controller: _amountOfTEController,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      int amount = int.tryParse(
                                              _amountOfTEController.text
                                                  .trim()) ??
                                          1;

                                      totalConsume += amount;

                                      WaterTrack waterTrack =
                                          WaterTrack(DateTime.now(), amount);

                                      waterTrackList.add(waterTrack);

                                      setState(() {
                                        _amountOfTEController.text = '1';
                                      });
                                    },
                                    child: const Text('Add'))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        color: Colors.red,
                        child: Image.network(
                            fit: BoxFit.cover, 'https://shorturl.ac/water56'),
                      )
                    ],
                  ))),
          Expanded(
              flex: 60,
              child: ListView.builder(
                  itemCount: waterTrackList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color:
                          index % 2 == 0 ? Colors.blue[100] : Colors.red[100],
                      elevation: 4,
                      child: ListTile(
                        onTap: () {
                          DialgoShow(context, waterTrackList[index].time,
                              waterTrackList[index].noOfGlasses);
                        },
                        onLongPress: () {
                          totalConsume -= waterTrackList[index].noOfGlasses;
                          waterTrackList.removeAt(index);
                          setState(() {});
                        },
                        leading: CircleAvatar(
                          child: Text('${index + 1}'),
                        ),
                        title: Center(
                          child: TextFormatDate(waterTrackList[index].time),
                        ),
                        trailing: Text(
                          '${waterTrackList[index].noOfGlasses}',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    );
                  }))
        ]),
      ),
    );
  }
}

class WaterTrack {
  final DateTime time;
  final int noOfGlasses;
  WaterTrack(this.time, this.noOfGlasses);
}
