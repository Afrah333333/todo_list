import 'package:flutter/material.dart';
import 'package:todolist/data/database.dart';
import 'package:todolist/pages/utilities/dialog_box.dart';
import 'package:todolist/pages/utilities/todo.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Workoutpage extends StatefulWidget {
  const Workoutpage({Key? key}) : super(key: key);

  @override
  State<Workoutpage> createState() => _WorkoutpageState();
}

class _WorkoutpageState extends State<Workoutpage> {
  //reference hive box
  final _mybox3 = Hive.box('mybox3');
  ToDoDataBase3 db3 = ToDoDataBase3();
  @override
  void initState() {
    // TODO: implement initState

    //if this is the first time ever opening the app, then create default data
    if(_mybox3.get('TODOLIST3')==null){
      db3.createInitialData2();
    }else{
      //if open te app after once
      db3.loadData2();
    }
    super.initState();
  }
  //text controller
  final _controller = TextEditingController();
  //list todo

  void checkBoxChanged(bool? value, int index){
    setState(() {
      db3.todoList3[index][1]= !db3.todoList3[index][1];
    });
    db3.updateDataBase2();
  }
  //delete task
  void deleteTask(int index){
    setState(() {
      db3.todoList3.removeAt(index);
    });
    db3.updateDataBase2();
  }
  // save task
  void saveNewTask(){
    setState(() {
      db3.todoList3.add([_controller.text, false]);
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
              color: Colors.black,
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
        backgroundColor: Colors.blue.shade800,
        child: const Icon(
            Icons.add
        ),
      ),
      body: ListView.builder(
          itemCount: db3.todoList3.length,
          itemBuilder: (context, index){
            return Todo_tiles(
              taskName: db3.todoList3[index][0],
              taskCompleted: db3.todoList3[index][1],
              onChanged: (value)=> checkBoxChanged(value,index),
              deleteFunction: (context)=>deleteTask(index),
            );
          }
      ),

    );
  }
}
