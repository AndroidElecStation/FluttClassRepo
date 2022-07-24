import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffe9c46a),
          borderRadius: BorderRadius.circular(30)
        ),
        height: 100,
      ),
    );
  }
}
