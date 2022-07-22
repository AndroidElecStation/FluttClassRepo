import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _pages = [
    Center(
      child: Text(
        'HomePage',
        style: TextStyle(
          fontSize: 50,
          color: Color(0xFF395e66),
        ),
      ),
    ),
    Center(
      child: Text(
        'Messages',
        style: TextStyle(
          fontSize: 50,
          color: Color(0xFF395e66),
        ),
      ),
    ),
    Center(
      child: Text(
        'Account',
        style: TextStyle(
          fontSize: 50,
          color: Color(0xFF395e66),
        ),
      ),
    ),
    Center(
      child: Text(
        'Setting',
        style: TextStyle(
          fontSize: 50,
          color: Color(0xFF395e66),
        ),
      ),
    ),
  ];
  int _selected_index = 0;
  void _navigate_bottom(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26a96c),
      appBar: AppBar(
        backgroundColor: Color(0xFF32936f),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xFF395e66),
          ),
          onPressed: () {},
        ),
        title: Text(
          "Bottom Navigation Bar App",
          style: TextStyle(fontSize: 18, color: Color(0xFF395e66)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.map,
              color: Color(0xFF395e66),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(0xFF395e66),
            ),
          )
        ],
      ),
      body: _pages[_selected_index],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xFF395e66),
        backgroundColor: Color(0xFF32936f),
        //fixedColor: Color(0xFF2bc016),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selected_index,
        onTap: _navigate_bottom,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Color(0xFF32936f),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              backgroundColor: Color(0xFF32936f),
              label: 'messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Color(0xFF32936f),
              label: 'account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              backgroundColor: Color(0xFF32936f),
              label: 'setting'),
        ],
      ),
    );
  }
}
