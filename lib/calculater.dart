import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculator{

  final int? weight;
  final int? height;
  double _bmi = 0;
  Calculator({@required this.weight,@required this.height});
  String CalculateBMI(){
     _bmi = weight!/ pow(height!/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getInterpretion(){
    if(_bmi>=25){
      return 'Heiger';
    }else if(_bmi>=18.5){
      return 'Normal';
    }else{
      return 'LOwer';
    }
  }

  String getResult(){
    if(_bmi>=25){
      return 'Over Weight';
    }else if(_bmi>=18.5){
      return 'NORMAL!';
    }else{
      return 'UNDER';
    }
  }


}