import 'package:flutter/material.dart';
import 'package:flutter_learning_7_building_ui/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const double BOTTOM_CONTAINER_HEIGHT = 80.0;
const Color BOTTOM_CONTAINER_COLOR = Color(0xFFEB1555);
const Color ACTIVE_CARD_COLOR = Color(0xFF1D1E33);
const Color INACTIVE_CARD_COLOR = Color(0xFF111328);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        color: selectedGender == Gender.male
                            ? ACTIVE_CARD_COLOR
                            : INACTIVE_CARD_COLOR,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          text: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        color: selectedGender == Gender.female
                            ? ACTIVE_CARD_COLOR
                            : INACTIVE_CARD_COLOR,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          text: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(color: ACTIVE_CARD_COLOR),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: ACTIVE_CARD_COLOR),
                  ),
                  Expanded(
                    child: ReusableCard(color: ACTIVE_CARD_COLOR),
                  ),
                ],
              ),
            ),
            Container(
              color: BOTTOM_CONTAINER_COLOR,
              margin: EdgeInsets.all(8.0),
              width: double.infinity,
              height: BOTTOM_CONTAINER_HEIGHT,
            ),
          ],
        ));
  }
}
