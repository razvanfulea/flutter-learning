import 'package:flutter/material.dart';

const ICON_SIZE = 80.0;
const TEXT_STYLE = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  IconContent({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: ICON_SIZE),
        SizedBox(height: 15.0),
        Text(
          text,
          style: TEXT_STYLE,
        )
      ],
    );
  }
}
