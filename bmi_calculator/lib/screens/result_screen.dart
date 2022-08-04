import 'package:flutter/material.dart';
import 'package:bmi_calculator/const_values.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmi,
      required this.Result,
      required this.Details,
      required this.Animation_Name
      });
  final double bmi;
  final String Result;
  final String Details;
  final String Animation_Name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffafcc),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Result", style: GoogleFonts.lora()),
        backgroundColor: Color(0xffbde0fe),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.only(
              top: 2,
              left: 8,
              right: 8,
            ),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Color(0xffbde0fe),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(
                  "Your BMI is",
                  style: GoogleFonts.alumniSansInlineOne(
                    fontSize: 40,
                    //fontWeight: FontWeight.bold,
                    color: BUTTON_TEXT_COLOR,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  bmi.toStringAsFixed(1),
                  style: GoogleFonts.dancingScript(
                      color: BUTTON_TEXT_COLOR,
                      fontWeight: FontWeight.bold,
                      fontSize: 100),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              //color: Colors.deepPurple,
              height: 400,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Lottie.asset(
                        'assets/${Animation_Name}.json',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          color: Color(0xffbde0fe),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                Result,
                                style: GoogleFonts.lora(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: BUTTON_TEXT_COLOR,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                Details,
                                style: GoogleFonts.lora(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottom_button(
              onTap: (){
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}

class bottom_button extends StatelessWidget {
  bottom_button({required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 65,
        color: Color(0xffbde0fe),
        child: Text(
          "ReCalculate",
          style: GoogleFonts.lora(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

// Container(
//   height: 400,
//   padding: EdgeInsets.only(top: 20),
//   margin: EdgeInsets.only(top: 2,left: 15, right: 15,),
//   //alignment: Alignment.topCenter,
//
//   decoration: BoxDecoration(
//       color: Color(0xffcdb4db),
//       borderRadius: BorderRadius.circular(20)
//   ),
//   child: Row(
//     children: [
//       // Center(
//       //   child: Lottie.asset("assets/53270-jumping-lunges.json",
//       //     height: 150,
//       //   ),
//       // ),
//       Expanded(
//         child: Container(
//
//         ),
//       )
//     ],
//   ),
// )

// class ResultPage extends StatefulWidget {
//   const ResultPage({Key? key}) : super(key: key);
//
//   @override
//   State<ResultPage> createState() => _ResultPageState();
// }
//
// class _ResultPageState extends State<ResultPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFffafcc),
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Result"),
//         backgroundColor: Color(0xffcdb4db),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             height: 300,
//             padding: EdgeInsets.only(top: 20),
//             margin: EdgeInsets.only(top: 2,left: 15, right: 15,),
//             alignment: Alignment.topCenter,
//
//             decoration: BoxDecoration(
//               color: Color(0xffcdb4db),
//               borderRadius: BorderRadius.circular(20)
//             ),
//             child: Column(
//               children: [
//                 Text(
//                   "Your BMI is",
//                   style: TextStyle(
//                       fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                     color: BUTTON_TEXT_COLOR,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Text(
//                   _bmi.toString(),
//                   style: TextStyle(
//                     color: BUTTON_TEXT_COLOR,
//                     fontWeight: FontWeight.bold,
//                   fontSize: 100
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
