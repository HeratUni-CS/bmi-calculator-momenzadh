import 'package:bmi_app_calculator/constant.dart';
import 'package:bmi_app_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
                    'Normal',
                    style: KResultTextStyle
                ),
                Text(
                  '25.2',
                  style: KBMITextStyle
                ),
                Column(
                  children: [
                    Text('Normal Range'),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
