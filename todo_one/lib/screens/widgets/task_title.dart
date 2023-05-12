import 'package:flutter/material.dart';
import 'package:todo_one/screens/widgets/task_check_box.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({required this.taskTitle, required this.isChecked, super.key});
  // Task Title variable = Name of The Task
  final String taskTitle;
  // isChecked is a variable that contain the checkbox value
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Task Title ( Name of The Task)
      title: Text(
        taskTitle,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      // Change The State of The Task by The CheckBox, Done Or UnDone
      trailing: Checkbox(
        activeColor: Colors.blue[600],
        value: isChecked,
        onChanged: null,
        // onChanged:  (bool? newVal) {
        //   setState(() {
        //     isChecked = newVal!;
        //   });
        // },
      ),
    );
  }
}
