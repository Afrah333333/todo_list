import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget {
  const Aboutpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ABOUT PAGE',
          style: TextStyle(
              color: Colors.black,
              fontSize:25.0
          ),
        ),
        toolbarHeight: 40.0,
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blue.shade800,
      ),
     body:Column(
       children: [
         Stack(
           clipBehavior: Clip.none,
           alignment: Alignment.center,
           children: [ Column(
             children: [
               ClipRRect(
                 child: Container(
                   color: Colors.blue.shade800,
                   height: 50,
                 ),
               ),
             ],
           ),
             const Positioned(
               top: 1,
               child: CircleAvatar(
                 backgroundImage: AssetImage('assets/images/pretty2.jpg'),
                 radius: 50.0,
               ),
             ),
           ],
         ),
         SizedBox(height: 50),
         Column(
           children:  [
             const Text('TO DO LIST',
               style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),
             ),
             const SizedBox(height: 8),
             const Text('Flutter Engineers',
               style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
             ),
             const SizedBox(height: 8),
             const Divider(
               thickness: 1,
             ),

             const Padding(
               padding: EdgeInsets.fromLTRB(16.0,1.0,0,0),
               child: Align(
                 alignment: Alignment.centerLeft,
                 child: Text('About ',
                   style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),
                 ),
               ),
             ),
             const Padding(
               padding: EdgeInsets.fromLTRB(16.0,5.0,0,0),
               child: Text('We provide a variety of to do lists for our candidates to perform according to their luxury',
                 style: TextStyle(fontSize: 15,),
               ),
             ),
             const SizedBox(height: 10),
             const Text('Our Team',
               style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold
               ),
             ),
             const SizedBox(height: 6),
             ClipRRect(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40),topRight: Radius.circular(40),bottomRight: Radius.circular(40)),
               child: Container(
                 width: 500,
                 color: Colors.blue.shade800,
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(
                     children: [
                       Expanded(
                         child: Column(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: Container(
                                 width: 70.0,
                                 height: 70.0,
                                 color: Colors.blue.shade600,
                                 child: const Icon(Icons.ac_unit_outlined,
                                   size: 30,
                                   color: Colors.white,
                                 ),
                               ),
                             ),
                             const SizedBox(height: 8,),
                             const Text('Bindu Gael',
                               style: TextStyle(fontSize: 15,color: Colors.white),
                             )
                           ],
                         ),
                       ),
                       Expanded(
                         child: Column(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: Container(
                                 width: 70.0,
                                 height: 70.0,
                                 color: Colors.blue.shade600,
                                 child: const Icon(Icons.ac_unit_outlined,
                                   size: 30,
                                   color: Colors.white,
                                 ),
                               ),
                             ),
                             const SizedBox(height: 8,),
                             const Text('Afrah Yasin',
                               style: TextStyle(fontSize: 15,color: Colors.white),
                             )
                           ],
                         ),
                       ),
                       Expanded(
                         child: Column(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: Container(
                                 width: 70.0,
                                 height: 70.0,
                                 color: Colors.blue.shade600,
                                 child: const Icon(Icons.ac_unit_outlined,
                                   size: 30,
                                   color: Colors.white,
                                 ),
                               ),
                             ),
                             const SizedBox(height: 8,),
                             const Text('Lujja Josh',
                               style: TextStyle(fontSize: 15,color: Colors.white),
                             )
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: IntrinsicHeight(
                 child: Row(
                   children: [
                     Expanded(
                       child: Column(
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(50),
                             child: Container(
                               width: 70.0,
                               height: 50.0,
                               color: Colors.transparent,
                               child:  Icon(Icons.call,
                                 size: 30,
                                 color: Colors.blue.shade600,
                               ),
                             ),
                           ),
                           const SizedBox(height: 4,),
                           const Text('Telephone',
                             style: TextStyle(fontSize: 15,),
                           ),
                           const SizedBox(height: 5,),
                           const Text('+256 778 456 345',
                             style: TextStyle(fontSize: 15,),
                           )
                         ],
                       ),
                     ),
                     const VerticalDivider(
                       color: Colors.black,
                       thickness: 1,
                     ),
                     Expanded(
                       child: Column(
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(50),
                             child: Container(
                               width: 70.0,
                               height: 50.0,
                               color: Colors.transparent,
                               child:  Icon(Icons.email,
                                 size: 30,
                                 color: Colors.blue.shade600,
                               ),
                             ),
                           ),
                           const SizedBox(height: 4,),
                           const Text('Email Address',
                             style: TextStyle(fontSize: 15,),
                           ),
                           const SizedBox(height: 5,),
                           const Text('todo@gmail.com',
                             style: TextStyle(fontSize: 15,),
                           )
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             ),
           ],
         ),
       ],
     ),
    );
  }
}
