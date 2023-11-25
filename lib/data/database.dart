import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // refrence our box
  final _mybox = Hive.box('mybox');

  // run this method if thes is the 1st time ever onening thes app
  void createInitialData() {
    toDoList = [
      ['Make Toturial', false],
      ['Do Exercise', false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  // update the database
  void updataDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
