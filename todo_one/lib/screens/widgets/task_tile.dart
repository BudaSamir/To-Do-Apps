import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Study Provider"),
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}
