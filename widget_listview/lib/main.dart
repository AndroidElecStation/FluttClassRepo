import 'package:flutter/material.dart';
import 'package:widget_listview/square.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff264653),
        appBar: AppBar(
          backgroundColor: Color(0xff2a7d8f),
          title: Text("List View"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 20,
            itemBuilder: (context, index){
          return Square();
        }
        ),
      ),
    );
  }
}
