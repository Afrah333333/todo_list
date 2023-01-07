import 'package:flutter/material.dart';
import 'package:todolist/data/database.dart';
import 'package:todolist/pages/utilities/dialog_box.dart';
import 'package:todolist/pages/utilities/todo.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 //reference hive box
  final _mybox = Hive.box('mybox');

ToDoDataBase db = ToDoDataBase();

@override
  void initState() {
    // TODO: implement initState

    //if this is the first time ever opening the app, then create default data
 if(_mybox.get('TODOLIST')==null){
db.createInitialData();
 }else{
   //if open te app after once
   db.loadData();
 }
 super.initState();
  }
  //text controller
  final _controller = TextEditingController();
  //list todo

  void checkBoxChanged(bool? value, int index){
setState(() {
  db.todoList[index][1]= !db.todoList[index][1];
});
db.updateDataBase();
  }
  //delete task
  void deleteTask(int index){
    setState(() {
db.todoList.removeAt(index);
    });
    db.updateDataBase();
  }
  // save task
  void saveNewTask(){
    setState(() {
      db.todoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }
  //create new task
  void createNewTask(){
    showDialog(
        context: context,
        builder: (context){
          return DialogBox(
            controller:_controller ,
            onSave: saveNewTask,
            onCancel: ()=>Navigator.of(context).pop(),
          );
    },
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title:const Text('To Do',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0
          ),
        ),
        centerTitle: true,
        elevation: 0.0,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.blue.shade600,
        child: const Icon(
          Icons.add

        ),
      ),
      body: ListView.builder(
        itemCount: db.todoList.length,
          itemBuilder: (context, index){
          return Todo_tiles(
              taskName: db.todoList[index][0],
              taskCompleted: db.todoList[index][1],
              onChanged: (value)=> checkBoxChanged(value,index),
            deleteFunction: (context)=>deleteTask(index),
          );
          }
      ),
     
    );
  }
}
