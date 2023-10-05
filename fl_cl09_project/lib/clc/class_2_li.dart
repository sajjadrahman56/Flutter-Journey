import 'package:flutter/material.dart';

class SumCounter extends StatefulWidget {
  const SumCounter({super.key});

  @override
  State<SumCounter> createState() => _SumCounterState();
}

class _SumCounterState extends State<SumCounter> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  double sum = 0;
  double sub = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Total'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('$sum')
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: _formKey,
                child: Row(
                  children: [
                    Expanded(
                      flex: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _controller1,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Number',
                            hintText: 'Num 1'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Number';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _controller2,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Number',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Number';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onLongPress: () {
                    _controller1.text = 0.toString();
                    _controller2.text = 0.toString();
                  },
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      double num1 = double.parse(_controller1.text.trim());
                      double num2 = double.parse(_controller2.text.trim());
                      print('first number $num1 and second number $num2');
                      sum = (num1 + num2);
                    }
                    setState(() {
                      sum = sum;
                    });

                    showAdaptiveDialog(
                        barrierDismissible: false,
                        barrierLabel: 'barrierLabel',
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Sum'),
                            titlePadding: EdgeInsets.all(20),
                            content: Text('$sum'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Ok',
                                  ))
                            ],
                          );
                        });
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Add'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      double num1 = double.parse(_controller1.text.trim());
                      double num2 = double.parse(_controller2.text.trim());
                      print('first number $num1 and second number $num2');
                      sub = (num1 - num2);
                    }
                    setState(() {
                      sum = sub;
                    });
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text('sub'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
