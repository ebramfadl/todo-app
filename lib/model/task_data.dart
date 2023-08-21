import 'package:flutter/foundation.dart';
import 'package:todo/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get allTasks{
    return UnmodifiableListView(tasks);
  }

  int get taskCount{
    return tasks.length;
  }

  void addTask(String taskTitle){
    final task = Task(name: taskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}