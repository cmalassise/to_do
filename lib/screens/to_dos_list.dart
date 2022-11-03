import 'package:flutter/material.dart';
import '../models/task.dart';
import '../widgets/tasks.dart';
import 'add_to_do.dart';

class ToDosList extends StatefulWidget {
  const ToDosList({Key? key}) : super(key: key);

  @override
  State<ToDosList> createState() => _ToDosListState();
}

class _ToDosListState extends State<ToDosList> {
  List<Task> todos = [
    Task(toDoTitle: 'German', toDoDescription: 'Make German Grammar Exercises'),
    Task(toDoTitle: 'Chess', toDoDescription: 'Chess Puzzles'),
    Task(
        toDoTitle: 'Reading',
        toDoDescription: 'Finish reading Tristram Shandy'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFc0002e),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return FractionallySizedBox(
                heightFactor: 0.8,
                child: AddToDo((newToDoTitle) {
                  setState(() {
                    todos.add(
                      Task(toDoTitle: newToDoTitle, toDoDescription: ''),
                    );
                  });
                }),
              );
            },
          );
        },
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 60.0, left: 28, right: 28, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 28,
              backgroundColor: Colors.yellow,
              child: Icon(
                Icons.list,
                size: 36,
                color: Color(0xFFc0002e),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'To Do',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Tasks list:',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Expanded(
              child: ToDoList(todos),
            )
          ],
        ),
      ),
    );
  }
}
