import 'package:bmi_app_calculator/composer/bottom_button.dart';
import 'package:bmi_app_calculator/composer/reusable_card.dart';
import 'package:flutter/material.dart';
import '/constant.dart';

class ResultPage extends StatelessWidget {
  final String? bmiResult,resultText,interpretation;
  ResultPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child:Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
            child: Text('Your Result',style: KTitleTextStyle),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Text(
                    resultText!.toUpperCase(),
                    style: KResultTextStyle
                ),
                Text(
                  bmiResult!,
                  style: KBMITextStyle
                ),
                Column(
                  children: [
                    Text('Normal BMI Range',style: KGrayTextStyle),
                    Text('18.5 - 35 KG/M2',style: KBodyTextStyle),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                      interpretation!,
                      style: KBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          ),
          BottomButton(title: 'Re-Calculate', onTap:(){
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
