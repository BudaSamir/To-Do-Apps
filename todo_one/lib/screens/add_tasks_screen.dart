import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //================== Header Text ===============================
          const Text(
            "ADD Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          //==============================================================
          //================== Text Field ================================
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          //==============================================================
          const SizedBox(height: 10),
          //================== Add Button ================================
          TextButton(
            onPressed: null,
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            child: const Text(
              "ADD",
              style: TextStyle(color: Colors.white),
            ),
          ), //==============================================================
        ],
      ),
    );
  }
}
