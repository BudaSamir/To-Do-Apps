import 'package:flutter/material.dart';
import 'package:todo_one/screens/widgets/task_check_box.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false; // true

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Study Provider",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        isChecked: isChecked,
        onChanged: (bool? newVal) {
          setState(() {
            isChecked = newVal!;
          });
        },
      ),
    );
  }
}
