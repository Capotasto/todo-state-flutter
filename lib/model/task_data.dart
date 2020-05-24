import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fluttertodoey/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
      name: 'Buy Milk',
      isDone: false,
    ),
    Task(
      name: 'Buy eggs',
      isDone: false,
    ),
    Task(
      name: 'Buy bread',
      isDone: false,
    ),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get getTask {
    return UnmodifiableListView(_tasks);
  }

  void changeItem(int index) {
    _tasks[index].changeChecked();
    notifyListeners();
  }

  void addItem(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeItem(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
