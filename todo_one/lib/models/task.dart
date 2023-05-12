class Task {
  // Task Title ( Name of The Task)
  final String taskTitle;
  // The State of the Task Done or not
  bool isDone;

  // Building The instance with values of Variables
  Task({required this.taskTitle, this.isDone = false});

  // Change The State of The Task by The CheckBox, Done Or UnDone
  void doneChange() {
    // the isDone Variable equals the reverse Value of itself
    isDone = !isDone;
  }
}
