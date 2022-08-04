import 'dart:math';

import 'package:flutter/material.dart';
class BMI
{
  // Constructor
  BMI();

  // Field
  late final int _Weight;
  late final int _Height;
  late final int _Age;
  double _bmi = 0;

  //<getters/setters>
  void SetWeight(int weight) {
    // TODO: implement SetWeight
    _Weight = weight;
  }
  void SetHeigh(int height) {
    // TODO: implement SetHeigh
    _Height = height;
  }
  void SetAge(int age) {
    // TODO: implement SetAge
    _Age = age;
  }
  double GetBMI() => _bmi;
  String GetResult(){
    if(_bmi >= 30)
      return "Obese";
    else if((_bmi >= 25) && (_bmi < 30))
      return "Over Weight";
    else if ((_bmi >= 18.5) && (_bmi <25))
      return " Healthy Weight";
    else
      return "Under Weight";
  }
  String GetDetails(){
    if(_bmi >= 30)
      return "Take this warning seriously. You are obese . Be sure to see a doctor. We wish you good health.";
    else if((_bmi >= 25) && (_bmi < 30))
      return "You are overweight. Have a diet and be sure to exercise. We wish you good health.";
    else if ((_bmi >= 18.5) && (_bmi <25))
      return " excellent. Your weight is perfect. Good luck.";
    else
      return "You are too thin. Go on a diet and see a doctor.";
  }
  String GetAnimationName(){
    if(_bmi >= 30)
      return "doctor";
    else if((_bmi >= 25) && (_bmi < 30))
      return "nutrition";
    else if ((_bmi >= 18.5) && (_bmi <25))
      return "love-emoji";
    else
      return "burger";
  }

  //<functions>
  void Calculate() {
    // TODO: implement Calculate
    _bmi = _Weight/(pow((_Height/100), 2));
  }

}
