import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.teal,
       body: SafeArea(
           child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               CircleAvatar(
                 radius: 50,
                 backgroundImage: AssetImage('images/fadi.jpeg'),
               ),
               Text('Fadi Ziadeh',
                 style: TextStyle(
                   fontFamily: 'Pacifico',
                   fontSize: 40.0,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                 ),

               ), Text('Flutter Developer',
               style: TextStyle(
                 fontSize: 30.0,
                 color: Colors.teal.shade100,
                 fontWeight: FontWeight.w600,
                 letterSpacing: 2.5
               ),),
               SizedBox(
                 height: 20.0,
                 width: 250.0,
                 child: Divider(
                   color: Colors.teal.shade100,
                 ),
               ),
               Card(
                   color: Colors.white,
                   margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 25.0),
                   child:ListTile(
                     leading: Icon(Icons.email,
                       color: Colors.teal,
                     ),
                     title: Text('+970 597 528 184',
                       style: TextStyle(fontSize: 20.0 , color: Colors.teal.shade900),),
                   )
               ),
               Card(
                 color: Colors.white,
                 margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 25.0),
                 child:ListTile(
                   leading: Icon(Icons.email,
                     color: Colors.teal,
                   ),
                   title: Text('FadiZiadeh@rfs.edu.ps',
                     style: TextStyle(fontSize: 20.0 , color: Colors.teal.shade900),),
                 )
               )
             ],
           )
       ),
     ),
   );
  }
  
}