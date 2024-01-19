// ignore_for_file: unused_field

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{

  List toDoList = [];

  // refrence the box
  final _myBox = Hive.box('mybox');

  void createInitialData(){
  toDoList=[
  ["Hi, Everyone ", false],
  
];
  }
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }
  void updateDataBase(){
    _myBox.put("TODOLIST",toDoList);
  }
  }
