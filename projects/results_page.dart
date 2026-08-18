
import 'package:bmi_calc/bottom_button.dart';
import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage ({required this.interpretation , required this.BmiResult , required this.resultText});
  final String BmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATION', style: TextStyle(color: Colors.white),)) ,  backgroundColor: Color(0xFF0A0E21),
      ) ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(resultText, style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kResultText),
                  Text(BmiResult, style: kResultNumber),
                  Text(
                    interpretation,
                    style: kBmitext,
                    textAlign: TextAlign.center,
                  ),
                ],
              ), onPress: () {  },
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RECALCULATE',
          ),
        ],
      ),
    );
  }
}
