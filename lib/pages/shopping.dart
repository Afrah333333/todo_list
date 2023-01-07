import 'package:flutter/material.dart';
import 'package:todolist/data/database.dart';
import 'package:todolist/pages/utilities/dialog_box.dart';
import 'package:todolist/pages/utilities/todo.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Shoppingpage extends StatefulWidget {
  const Shoppingpage({Key? key}) : super(key: key);

  @override
  State<Shoppingpage> createState() => _ShoppingpageState();
}

class _ShoppingpageState extends State<Shoppingpage> {
  //reference hive box
  final _mybox4 = Hive.box('mybox4');
  ToDoDataBase4 db4 = ToDoDataBase4();
  @override
  void initState() {
    // TODO: implement initState

    //if this is the first time ever opening the app, then create default data
    if(_mybox4.get('TODOLIST4')==null){
      db4.createInitialData();
    }else{
      //if open te app after once
      db4.loadData();
    }
    super.initState();
  }
  //text controller
  final _controller = TextEditingController();
  //list todo

  void checkBoxChanged(bool? value, int index){
    setState(() {
      db4.todoList4[index][1]= !db4.todoList4[index][1];
    });
    db4.updateDataBase();
  }
  //delete task
  void deleteTask(int index){
    setState(() {
      db4.todoList4.removeAt(index);
    });
    db4.updateDataBase();
  }
  // save task
  void saveNewTask(){
    setState(() {
      db4.todoList4.add([_controller.text, false]);
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
          itemCount: db4.todoList4.length,
          itemBuilder: (context, index){
            return Todo_tiles(
              taskName: db4.todoList4[index][0],
              taskCompleted: db4.todoList4[index][1],
              onChanged: (value)=> checkBoxChanged(value,index),
              deleteFunction: (context)=>deleteTask(index),
            );
          }
      ),

    );
  }
}
