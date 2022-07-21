import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(

    home: Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.gamepad_outlined,
          color: Colors.white,
          size: 50,
        ),
        title: Text(
          "Dice",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Dice(),
    ),
  ));
}

/*class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int LeftDice = 1;
    int RightDice = 6;
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                LeftDice += 1;
                print('dice ${LeftDice}');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/dice${LeftDice}.png'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                RightDice += 1;
                print('dice ${RightDice}');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/dice${RightDice}.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => Dice_State();
}
class Dice_State extends State<Dice> {
  int LeftDice = 1;
  int RightDice = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                setState((){
                  LeftDice = Random().nextInt(6) + 1;
                });
                print('dice ${LeftDice}');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/dice${LeftDice}.png'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                setState((){
                  RightDice = Random().nextInt(6) + 1;
                });
                print('dice ${RightDice}');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/dice${RightDice}.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );;
  }
}
