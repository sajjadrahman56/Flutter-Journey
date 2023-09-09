import 'package:flutter/material.dart';

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
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              onLongPress: () {
                print('long press');
              },
              onPressed: () {
                print('email has been sent');
              },
              child: Text("Button 1"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    print('resend eamail');
                  },
                  onLongPress: () {
                    print('long press 2');
                  },
                  child: Text("Reset")),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_a_photo),
            ),
            OutlinedButton(
                onPressed: () {},
                onLongPress: () => print('long press'),
                child: Text('outline button')),
            // input field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.blue,
                  filled: true,
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  label: Text('Name'),
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            TextField(
              decoration: InputDecoration(
                fillColor: Colors.blue,
                filled: true,
                hintText: 'Enter password',
                hintStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: Text('Password'),
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(15),
              child: Text('Container'),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 2),
                // borderRadius: BorderRadius.circular(20),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
