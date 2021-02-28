import 'package:flutter/material.dart';
import 'file:///D:/Learning/flutter/flutter-learning/flutter_learning_7_building_ui/lib/components/bottom_button.dart';
import 'file:///D:/Learning/flutter/flutter-learning/flutter_learning_7_building_ui/lib/components/reusable_card.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your results', style: TITLE_TEXT_STYLE),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: ACTIVE_CARD_COLOR,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Normal', style: RESULT_TEXT_STYLE),
                  Text('18.3', style: BMI_TEXT_STYLE),
                  Text(
                    'Your BMI result is quite low. You should eat more!',
                    textAlign: TextAlign.center,
                    style: BODY_TEXT_STYLE,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
