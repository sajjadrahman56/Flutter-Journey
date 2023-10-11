import 'package:flutter/material.dart';
import 'package:todo_app/liveclass/task_.dart';
import 'package:intl/intl.dart';

class AddNewTaskModel extends StatefulWidget {
  const AddNewTaskModel({super.key, required this.onAddTap});

  final Function(Task) onAddTap;

  @override
  State<AddNewTaskModel> createState() => _AddNewTaskModelState();
}

class _AddNewTaskModelState extends State<AddNewTaskModel> {
  final TextEditingController _todoTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add Todo',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLines: 4,
              controller: _todoTEController,
              decoration: InputDecoration(
                  labelText: 'Title',
                  hintText: 'Enter your todo here',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Task task = Task(
                            detailes: _todoTEController.text.trim(),
                            createdAt: DateTime.now(),
                            updatedAt: DateTime.now());
                        widget.onAddTap(task);
                        Navigator.pop(context);
                      }
                    },
                    child: Text('Add')))
          ],
        ),
      ),
    );
  }
}
