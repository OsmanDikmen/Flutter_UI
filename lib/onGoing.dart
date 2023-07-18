import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    bool isMoving = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        body: Container(
          alignment: Alignment.center,
          child: isMoving ?
          Icon(Icons.agriculture, size:300,color: Colors.green,):
          Icon(Icons.error, size:300,color: Colors.red,),
           //show this text on loading = false
          
        )
      ),
      
    );
  }
}

