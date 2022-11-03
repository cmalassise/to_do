import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  final bool isChecked;
  final String title;
  final String description;
  final Function(bool?) checkboxCallback;

  const ToDoItem(
      {super.key,
      required this.isChecked,
      required this.title,
      required this.description,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.yellow,
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 2, color: Colors.black),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 20,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      subtitle: Text(
        description,
        style: TextStyle(
            fontSize: 16,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: const Color(0xFFc0002e),
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
