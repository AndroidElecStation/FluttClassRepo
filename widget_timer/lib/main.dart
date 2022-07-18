import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int time_left = 5;
  void countdown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      print("Timer Tick is ${timer.tick}");
      print("Timer Status is ${timer.isActive}");
      print("Timer hash code is ${timer.hashCode}");
      setState(() {
        if(time_left>0){ time_left--;}
        else { timer.cancel();}


      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Time Left is ${time_left} ',
                style: TextStyle(fontSize: 30),
              ),
              MaterialButton(
                onPressed: () {
                  countdown();
                },
                child: Icon(
                    Icons.timer,
                color: Colors.indigo,
                size: 60,
                  semanticLabel: "Start",
                ),/*Text('start',
                    style: TextStyle(fontSize: 50, color: Colors.black)),*/
              ),
            ],
          ),
        ),
      ),
    );
  }
}
