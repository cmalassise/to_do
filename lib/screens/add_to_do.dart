import 'package:flutter/material.dart';

class AddToDo extends StatelessWidget {
  final Function addToDoCallback;
  const AddToDo(this.addToDoCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    String newToDoTitle = '';
    String newToDoDescription = '';

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add To Do',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          TextField(
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFc0002e)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFc0002e)),
              ),
            ),
            autofocus: true,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newToDoTitle = newText;
            },
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Add Description',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          TextField(
            style: const TextStyle(fontSize: 20),
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFc0002e)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFc0002e)),
              ),
            ),
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newToDoDescription = newText;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFFc0002e)),
            ),
            onPressed: () {
              addToDoCallback(newToDoTitle);
              addToDoCallback(newToDoDescription);
            },
            child: const Text(
              'ADD',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
