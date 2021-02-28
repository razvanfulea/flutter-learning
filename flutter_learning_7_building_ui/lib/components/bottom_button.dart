import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: BOTTOM_CONTAINER_COLOR,
        margin: EdgeInsets.all(8.0),
        width: double.infinity,
        height: BOTTOM_CONTAINER_HEIGHT,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(child: Text(buttonTitle, style: LARGE_BUTTON_TEXT_STYLE)),
      ),
    );
  }
}
