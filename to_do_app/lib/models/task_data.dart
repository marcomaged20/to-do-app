import 'package:flutter/material.dart';
import 'package:to_do_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "go shopping"),
    Task(name: "buy a gift"),
    Task(name: "repair the car"),
  ];
  void addTask(String newTextTitle) {
    tasks.add(Task(name: newTextTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
