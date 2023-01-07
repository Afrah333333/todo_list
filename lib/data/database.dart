import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{

  List todoList = [];
  //reference our box
  final _mybox = Hive.box('mybox');
  // run this method wenever this is the first time user opens the app
  void createInitialData(){
    todoList=[
      ['Write a Book',false],
      ['Do Exercise',false]
    ];
  }
  //load the data from database
void loadData(){
todoList = _mybox.get('TODOLIST');
}
//update the database
void updateDataBase(){
_mybox.put('TODOLIST', todoList);
}
}
class ToDoDataBase2{

  List todoList2 = [];
  //reference our box
  final _mybox2 = Hive.box('mybox2');
  // run this method whenever this is the first time user opens the app
  void createInitialData(){
    todoList2=[
      ['Go with friends',false],
      ['Travel',false]
    ];
  }
  //load the data from database
  void loadData(){
    todoList2 = _mybox2.get('TODOLIST2');
  }
//update the database
  void updateDataBase(){
    _mybox2.put('TODOLIST2', todoList2);
  }
}
class ToDoDataBase3{
  List todoList3 = [];
  //reference our box
  final _mybox3 = Hive.box('mybox3');
  // run this method whenever this is the first time user opens the app
  void createInitialData2(){
    todoList3=[
      ['Go to gym',false],
      ['Do pushups',false]
    ];
  }
  //load the data from database
  void loadData2(){
    todoList3 = _mybox3.get('TODOLIST3');
  }
//update the database
  void updateDataBase2(){
    _mybox3.put('TODOLIST3', todoList3);
  }
}

class ToDoDataBase4{

  List todoList4 = [];
  //reference our box
  final _mybox4 = Hive.box('mybox4');
  // run this method whenever this is the first time user opens the app
  void createInitialData(){
    todoList4=[
      ['Buy rice',false],
      ['Buy apples',false]
    ];
  }
  //load the data from database
  void loadData(){
    todoList4 = _mybox4.get('TODOLIST4');
  }
//update the database
  void updateDataBase(){
    _mybox4.put('TODOLIST4', todoList4);
  }
}