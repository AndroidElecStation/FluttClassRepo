import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp() ,
  ) );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text('Telegram'),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.vpn_key)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}
