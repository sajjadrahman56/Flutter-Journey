import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/liveclass/add_task.dart';
import 'package:todo_app/liveclass/task_.dart';
import 'package:todo_app/liveclass/update_task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Task> taskList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Todo'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNewTaskModel(
                  onAddTap: (task) {
                    addTask(task);
                  },
                );
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
            child: ListView.separated(
                itemCount: taskList.length,
                itemBuilder: (context, index) {
                  final Task task = taskList[index];
                  final String formatedDate =
                      DateFormat('hh:mm a yyyy-MM-dd').format(task.createdAt);

                  return ListTile(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Actions'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons.edit),
                                    title: const Text('Update'),
                                    onTap: () {
                                      Navigator.pop(context);
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return UpdateTaskModel(
                                            updateTask: task,
                                            onUpdateTap: (String detailes) {
                                              updateTask(index, detailes);
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.delete),
                                    title: const Text('delete'),
                                    onTap: () {
                                      print('delete');
                                      deleteTask(index);
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text('${task.detailes}'),
                    subtitle: Text('$formatedDate'),
                    trailing: Text('Pending'),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 4,
                  );
                })));
  }

  void addTask(Task task) {
    taskList.add(task);
    setState(() {});
  }

  void deleteTask(int index) {
    taskList.removeAt(index);
    setState(() {});
  }

  void updateTask(int index, String detailes) {
    taskList[index].detailes = detailes;
    setState(() {});
  }

  void updateStatus(int index, String status) {
    taskList[index].status = status;
    setState(() {});
  }
}
