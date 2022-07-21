import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
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
        backgroundColor: Color(0xFF0078AA),
        elevation: 0,
        title: Text(
          'Telegram',
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.verified_user, color: Color(0xFFF2DF3A)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.search,
                  color: Color(0xFFF2DF3A),
                ),
              ),
            ],
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF3AB4F2),
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 10),
          margin: EdgeInsets.only(left: 0),
          child: ListView(
            //padding: EdgeInsets.all(0),
            scrollDirection: Axis.vertical,
            children: [
              DrawerHeader(
                //duration: Duration(seconds: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF3AB4F2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      alignment: Alignment.center,
                      image: NetworkImage(
                          "https://www.freepnglogos.com/uploads/telegram-logo-png-0.png"),
                      invertColors: false,
                      scale: 10),
                ),
                child: Center(
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              ListTile(
                iconColor: Color(0xFFF2DF3A),
                textColor: Color(0xFFF6F6F6),
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                iconColor: Color(0xFFF2DF3A),
                textColor: Color(0xFFF6F6F6),
                leading: Icon(Icons.add),
                title: Text(
                  'Add Account',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                iconColor: Color(0xFFF2DF3A),
                textColor: Color(0xFFF6F6F6),
                leading: Icon(Icons.group),
                title: Text(
                  'New Group',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                iconColor: Color(0xFFF2DF3A),
                textColor: Color(0xFFF6F6F6),
                leading: Icon(Icons.person),
                title: Text(
                  'Contact',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                iconColor: Color(0xFFF2DF3A),
                textColor: Color(0xFFF6F6F6),
                leading: Icon(Icons.call_sharp),
                title: Text(
                  'Calls',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                iconColor: Color(0xFFF2DF3A),
                textColor: Color(0xFFF6F6F6),
                leading: Icon(Icons.person_search),
                title: Text(
                  'People Nearby',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                iconColor: Color(0xFFF2DF3A),
                textColor: Color(0xFFF6F6F6),
                leading: Icon(Icons.bookmark),
                title: Text(
                  'Saved Messages',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                iconColor: Color(0xFFF2DF3A),
                textColor: Color(0xFFF6F6F6),
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
