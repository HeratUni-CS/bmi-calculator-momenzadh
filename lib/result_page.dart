import 'package:bmi_app_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

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
                    Text('Normal BMI Range',style: KGrayTextStyle),
                    Text('18.5 - 35 KG/M2',style: KBodyTextStyle),
                  ],
                ),
                Text(
                    'You Have a Normal weight , Good Job!',
                    style: KBodyTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
