import 'package:flutter/material.dart';
import 'package:todo_app/liveclass/task_.dart';

class UpdateTaskModel extends StatefulWidget {
  const UpdateTaskModel(
      {super.key, required this.updateTask, required this.onUpdateTap});

  final Task updateTask;
  final Function(String) onUpdateTap;
  @override
  State<UpdateTaskModel> createState() => _UpdateTaskModelState();
}

class _UpdateTaskModelState extends State<UpdateTaskModel> {
  late TextEditingController updateTodoTEController;

  void initState() {
    super.initState();
    updateTodoTEController = TextEditingController(
      text: widget.updateTask.detailes,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Update Todo',
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
            controller: updateTodoTEController,
            maxLines: 4,
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
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    widget.onUpdateTap(updateTodoTEController.text.trim());
                    Navigator.pop(context);
                  },
                  child: Text('Add')))
        ],
      ),
    );
  }
}
