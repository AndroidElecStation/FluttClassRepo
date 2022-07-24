import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ) );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double current_value = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(current_value.toString() ,style: TextStyle(fontSize: 40), ),
          Slider(value: current_value,
              activeColor: Colors.indigo,
              thumbColor: Colors.blueAccent,
              inactiveColor: Colors.blue,
              autofocus: true,
              label:"Temp",
              max: 10,
              min: 0,
              divisions: 10,
              onChanged: (slider_value){
                setState(() {
                  current_value  = slider_value;
                });
              })
        ],
      ),
    );
  }
}


