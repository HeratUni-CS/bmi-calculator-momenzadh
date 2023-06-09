

import 'package:bmi_app_calculator/calculater.dart';
import 'package:bmi_app_calculator/composer/bottom_button.dart';
import 'package:bmi_app_calculator/constant.dart';
import 'package:bmi_app_calculator/composer//icon_content.dart';
import 'package:bmi_app_calculator/composer/reusable_card.dart';
import 'package:bmi_app_calculator/screens//result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../composer//round_icon_button.dart';
enum Gender{male,female}


class InputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();

}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 100;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child:Row(
              children: [
                Expanded(
                  child:ReusableCard(
                   onPress: (){
                     setState(() {
                       selectedGender = Gender.male;
                     });
                   },
                    color: selectedGender == Gender.male ? KActiveCardColor : KInactiveCardColor,
                    child: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE'),
                  ),
                ),
                Expanded(
                  child:ReusableCard(
                   onPress: (){
                     setState(() {
                       selectedGender = Gender.female;
                     });
                   },
                    color: selectedGender == Gender.female ? KActiveCardColor : KInactiveCardColor,
                  child: IconContent(icon: FontAwesomeIcons.venus,label: 'FEMALE'),
                ),
                ),
              ],
            )),
            Expanded(
              child:ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style:KLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(),
                          style: KNumberTextStyle,
                        ),
                        Text(
                            'cm',
                          style: KLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 1,
                        inactiveTrackColor: Color(0xFF8D8E9B),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 18),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 34)
                      ),
                      child: Slider(value: height.toDouble(),
                          min: 30,
                          max: 300,
                          onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                          }),
                    )
                  ],
                ),
            ),
            ),
            Expanded(
              child:Row(
              children: [
                Expanded(child:ReusableCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT',
                        style: KLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: KNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         RoundIconBotton(icon: FontAwesomeIcons.minus,onPress: (){
                           setState(() {
                             weight --;
                           });
                         },),
                          SizedBox(width: 10,),
                          RoundIconBotton(icon: FontAwesomeIcons.plus,onPress: (){
                            setState(() {
                              weight++;
                            });
                          },),
                        ],
                      )
                    ],
                  ),
                ),
                ),
                Expanded(child:ReusableCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',
                        style: KLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: KNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconBotton(icon: FontAwesomeIcons.minus,onPress: (){
                            setState(() {
                              age --;
                            });
                          },),
                          SizedBox(width: 10,),
                          RoundIconBotton(icon: FontAwesomeIcons.plus,onPress: (){
                            setState(() {
                              age++;
                            });
                          },),
                        ],
                      ),
                    ],
                  ),
                ),
                ),
              ],
            ),),
            BottomButton(title: 'Calculate',onTap: (){
              Calculator calculator= Calculator(weight: weight, height: height);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
                bmiResult: calculator.CalculateBMI(),
                resultText: calculator.getResult(),
                interpretation: calculator.getInterpretion(),
              ),),);
            },) ,
          ],
    ),
    );
  }
}

