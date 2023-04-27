import 'package:flutter/material.dart';
import 'package:todo_one/screens/add_tasks_screen.dart';
import 'package:todo_one/screens/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //================== Add Button ==========================================
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                      child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const AddTasksScreen(),
                  )));
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //========================================================================
      backgroundColor: Colors.blue,
      body: Container(
        padding:
            const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                //================== Header Icon ===============================
                Icon(
                  Icons.playlist_add_check,
                  size: 60,
                  color: Colors.white,
                ),
                //==============================================================
                SizedBox(
                  width: 20,
                ),
                //================== Header Text ===============================
                Text(
                  "To DO List",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                //==============================================================
              ],
            ),
            //================== Tasks count Text ==============================
            const Text(
              "4 Tasks",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            //==================================================================
            const SizedBox(
              height: 20,
            ),
            //================== Tasks List Container ==========================
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white70,
                          blurRadius: 20,
                          spreadRadius: 1)
                    ]),
                child: const TasksList(),
              ),
            ),
            //==================================================================
          ],
        ),
      ),
    );
  }
}
