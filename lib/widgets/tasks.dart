import 'package:flutter/material.dart';
import '../models/task.dart';
import 'to_do_item.dart';

class ToDoList extends StatefulWidget {
  final List<Task> todos;

  const ToDoList(this.todos, {super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ToDoItem(
          title: widget.todos[index].toDoTitle,
          description: widget.todos[index].toDoDescription,
          isChecked: widget.todos[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.todos[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.todos.length,
    );
  }
}
