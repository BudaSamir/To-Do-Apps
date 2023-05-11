// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  final bool? isChecked;
  final void Function(bool?) onChanged;
  const TaskCheckBox(
      {super.key, required this.isChecked, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.blue[600],
      value: isChecked,
      onChanged: onChanged,
    );
  }
}
