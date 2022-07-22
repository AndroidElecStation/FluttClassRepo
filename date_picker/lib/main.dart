import 'package:flutter/material.dart';
import  'package:persian_datetime_picker/persian_datetime_picker.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
     theme: ThemeData(primarySwatch: Colors.amber),
     //theme: ThemeData(brightness: Brightness.dark),
  ), );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _showDatePicker(){
    showPersianDatePicker(
        context: context,
        initialDate: Jalali.now(),
        firstDate: Jalali(1400),
        lastDate: Jalali(1500)
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF003566),
      appBar: AppBar(
        backgroundColor: Color(0xFF001d3d),
        title: Text("Calendar",
          style: TextStyle(
            color: Color(0xFFfdc500)
        ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 500),
          child: IconButton(
            icon: Icon(Icons.calendar_month),
            color: Color(0xFFfdc500),
            iconSize: 50,
            onPressed: (){
              _showDatePicker();
            },
          ),
        ),
      ),

    );
  }
}

