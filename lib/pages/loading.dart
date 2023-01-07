import 'package:flutter/material.dart';
import 'package:todolist/pages/home.dart';
import 'about.dart';
class Loading extends StatefulWidget {


  @override
  State<Loading> createState() => HomeState();
}

class HomeState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Daily Activity',
          style: TextStyle(
              color: Colors.black,
              fontSize:25.0
          ),
        ),
        toolbarHeight: 60.0,
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blue.shade800,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/about');
        },
        backgroundColor: Colors.blue.shade800,
        child: const Icon(
            Icons.add
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                width: 500,
                height: 50,
                color: Colors.blue.shade800,

              ),
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                child: Container(
                  width: 500,
                  height: 50,
                  color: Colors.blue.shade50,
                ),
              ),
            ],
          ),

           ClipRRect(
             borderRadius: BorderRadius.circular(0),
             child: Container(
               color: Colors.blue.shade50,
               height: 480,
               width: 420,
               child: Padding(
                 padding:  const EdgeInsets.fromLTRB(20.0,50.0,50.0,0.0),
                 child: Column(
                   children: [
                     Row(
                       children: <Widget>[
                         Expanded(
                           child: Container(
                             width: 190,
                             height: 190,
                             padding: const EdgeInsets.all(20.0),
                             decoration: BoxDecoration(
                               color: Colors.black,
                               border: Border.all(
                                 width: 1.0,
                               ),
                               borderRadius: const BorderRadius.all(
                                   Radius.circular(20.0)
                               ),
                             ),
                             child: Column(
                               children: [
                                 const Center(
                                   child: CircleAvatar(
                                     backgroundImage: AssetImage('assets/images/book2.jpg'),
                                     radius: 40.0,
                                   ),
                                 ),
                                 const SizedBox(height: 10,),
                                 ElevatedButton(
                                   onPressed: () {
                                     Navigator.pushNamed(context, '/home');
                                     },
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.blue.shade800,
                                   ),
                                   child: const Text('EDUCATION',
                                     style: TextStyle(
                                         fontSize: 16,
                                         fontWeight: FontWeight.bold,
                                         color: Colors.black
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                         const SizedBox(width: 15,),
                         Expanded(
                           child: Container(
                             width: 190,
                             height: 190,
                             padding: const EdgeInsets.all(25.0),
                             decoration: BoxDecoration(
                               color: Colors.blue.shade800,
                               border: Border.all(
                                 width: 1.0,
                               ),
                               borderRadius: const BorderRadius.all(
                                   Radius.circular(20.0)
                               ),
                             ),
                             child: Column(
                               children: [
                                 const Center(
                                   child: CircleAvatar(
                                     backgroundImage: AssetImage('assets/images/image.jpg'),
                                     radius: 40.0,
                                   ),
                                 ),
                                 const SizedBox(height: 10,),
                                 ElevatedButton(
                                   onPressed: () {
                                     Navigator.pushNamed(context, '/outing');
                                   },
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.white,
                                   ),
                                   child: const Text('LEISURE',
                                     style: TextStyle(
                                         fontSize: 16,
                                         fontWeight: FontWeight.bold,
                                         color: Colors.black
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                     const SizedBox(height: 20,),
                     Row(
                       children: <Widget>[
                         Expanded(
                           child: Container(
                             width: 190,
                             height: 190,
                             padding: const EdgeInsets.all(25.0),
                             decoration: BoxDecoration(
                               color: Colors.blue.shade800,
                               border: Border.all(
                                 width: 1.0,
                               ),
                               borderRadius: const BorderRadius.all(
                                   Radius.circular(20.0)
                               ),
                             ),
                             child: Column(
                               children: [
                                 const Center(
                                   child: CircleAvatar(
                                     backgroundImage: AssetImage('assets/images/exercise.jpeg'),
                                     radius: 40.0,
                                   ),
                                 ),
                                 const SizedBox(height: 10,),
                                 ElevatedButton(
                                   onPressed: () {
                                     Navigator.pushNamed(context, '/workout');
                                   },
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.white,
                                   ),
                                   child: const Text('WORKOUT',
                                     style: TextStyle(
                                         fontSize: 16,
                                         fontWeight: FontWeight.bold,
                                         color: Colors.black
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                         const SizedBox(width: 15,),
                         Expanded(
                           child: Container(
                             width: 190,
                             height: 190,
                             padding: const EdgeInsets.all(25.0),
                             decoration: BoxDecoration(
                               color: Colors.black,
                               border: Border.all(
                                 width: 1.0,
                               ),
                               borderRadius: const BorderRadius.all(
                                   Radius.circular(20.0)
                               ),
                             ),
                             child: Column(
                               children: [
                                 const Center(
                                   child: CircleAvatar(
                                     backgroundImage: AssetImage('assets/images/shopping.jpg'),
                                     radius: 40.0,
                                   ),
                                 ),
                                 const SizedBox(height: 10,),
                                 ElevatedButton(
                                   onPressed: () {
                                     Navigator.pushNamed(context, '/shopping');
                                   },
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.blue.shade800,
                                   ),
                                   child: const Text('OTHERS',
                                     style: TextStyle(
                                         fontSize: 16,
                                         fontWeight: FontWeight.bold,
                                         color: Colors.black
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
             ),
           ),
        ],
      ),
    );
  }
}
