import 'package:flutter/material.dart';
import 'package:todo_one/models/task.dart';
import 'package:todo_one/screens/widgets/task_title.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  // List contain The Tasks ( Task_model )
  // created Objects from Class Task in a List, and give then values
  List<Task> tasks = [
    Task(taskTitle: "Study MVVM"),
    Task(taskTitle: "Study Restful API's"),
    Task(taskTitle: "Study Bloc"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // TaskTile present the UI and Task instance present Data
        // passing task instance value to tasktile variable
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              TaskTile(
                taskTitle: tasks[index].taskTitle,
                isChecked: tasks[index].isDone,
              ),
              const Divider(),
            ],
          );
        });
  }
}
