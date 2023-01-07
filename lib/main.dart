import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todolist/pages/shopping.dart';
import 'package:todolist/pages/workout.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/outing.dart';
import 'pages/about.dart';
void main() async {
//init the hive

await Hive.initFlutter();

//open a box
  var box = await Hive.openBox('mybox');
  var box2 = await Hive.openBox('mybox2');
  var box3 = await Hive.openBox('mybox3');
  var box4 = await Hive.openBox('mybox4');
 runApp(const MyApp());
}
  

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.blue.shade800,
          accentColor: Colors.lightBlue
      ),
    initialRoute: '/loading',
    routes: {
      '/loading': (context) => Loading(),
      '/home': (context) => const Homepage(),
    '/outing':(context)=>const Outingpage(),
      '/workout':(context)=>const Workoutpage(),
      '/shopping':(context)=>const Shoppingpage(),
      '/about':(context)=>const Aboutpage()
    },

    );
  }
}





