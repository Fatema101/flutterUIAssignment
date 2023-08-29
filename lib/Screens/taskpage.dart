import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  var numbers = ["One", "Two", "Three"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task Board",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.40),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(10),
            color: const Color.fromRGBO(245, 248, 251, 1),
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Task ${numbers[index]}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ],
                  ),
                  const Text(
                      "Your Personal task management and planning solution for planning your day, week & months"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        DateFormat('h:mm a d MMM, yyyy').format(DateTime.now()),
                        style: const TextStyle(
                            color: Color.fromRGBO(30, 31, 32, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(57, 57, 57, 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
