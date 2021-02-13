import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 200.0,
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/d/d9/Lionel_Messi_20180626_%28cropped%29.jpg',
                ),
              ),
              Container(
                child: Text(
                  'Lionel Messi',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'FOOTBALLER',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'SourceSansPro',
                    color: Colors.white,
                    letterSpacing: 3.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
