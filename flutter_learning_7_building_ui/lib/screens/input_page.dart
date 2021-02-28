import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning_7_building_ui/components/icon_content.dart';
import 'file:///D:/Learning/flutter/flutter-learning/flutter_learning_7_building_ui/lib/screens/results_page.dart';
import 'file:///D:/Learning/flutter/flutter-learning/flutter_learning_7_building_ui/lib/components/reusable_card.dart';
import 'file:///D:/Learning/flutter/flutter-learning/flutter_learning_7_building_ui/lib/components/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_button.dart';
import '../constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male ? ACTIVE_CARD_COLOR : INACTIVE_CARD_COLOR,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female ? ACTIVE_CARD_COLOR : INACTIVE_CARD_COLOR,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: ACTIVE_CARD_COLOR,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // crossAxisAlignment:
                  children: [
                    Text('HEIGHT', style: LABEL_TEXT_STYLE),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      // possibly not needed in latest version
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: NUMBER_TEXT_STYLE),
                        Text('CM', style: LABEL_TEXT_STYLE),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x77EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: ACTIVE_CARD_COLOR,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT', style: LABEL_TEXT_STYLE),
                          Text(weight.toString(), style: NUMBER_TEXT_STYLE),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: ACTIVE_CARD_COLOR,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE', style: LABEL_TEXT_STYLE),
                          Text(age.toString(), style: NUMBER_TEXT_STYLE),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage()));
              },
              buttonTitle: 'CALCULATE',
            ),
          ],
        ));
  }
}
