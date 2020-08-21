import 'package:flutter/material.dart';
import 'package:rough/listitems.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("MY STORE")),
        body: Column(children: [
          Container(
            width: double.infinity,
            color: Colors.amber,
            padding: EdgeInsets.all(10),
            height:50,
            child:Text("Products",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
          ),
          Container(
            height:300,
            padding: EdgeInsets.symmetric(horizontal:10),
            child:ListItems(),
          )
        ]),
      ),
    );
  }
}


