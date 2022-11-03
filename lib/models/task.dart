class Task {
  final String toDoTitle;
  final String toDoDescription;
  bool isDone;

  Task(
      {required this.toDoTitle,
      required this.toDoDescription,
      this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
