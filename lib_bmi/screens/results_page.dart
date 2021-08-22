import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  // ResultsPage(
  //     {@required this.bmiResult,
  //     @required this.interpretation,
  //     @required this.resultText});
  // final String bmiResult;
  // final String resultText;
  // final String interpretation;
  @override
  Widget build(BuildContext context) {
    final Map result = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result['resultText'].toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    result['bmiResult'],
                    style: kBMITextStyle,
                  ),
                  Text(
                    result['interpretation'],
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RECALCULATE BMI',
            onTap: () {
              // Navigator.pushNamed(context, '/');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
