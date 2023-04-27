import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //================== Add Button ==========================================
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo[400],
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //========================================================================
      backgroundColor: Colors.teal[400],
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                //================== Header Icon ===============================
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
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
                          color: Colors.white, blurRadius: 5, spreadRadius: 1)
                    ]),
              ),
            ),
            //==================================================================
          ],
        ),
      ),
    );
  }
}
