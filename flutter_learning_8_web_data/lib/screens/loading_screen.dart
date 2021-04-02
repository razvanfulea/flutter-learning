import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final kWeatherPath = 'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139'
      '&appid=b6907d289e10d714a6e88b30761fae22';

  void getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
    } catch (e) {
      print(e);
    }
  }

  void getData() async {
    http.Response response = await http.get(Uri.parse(kWeatherPath));
    print(response.body);
    var data = response.body;
    var lon = jsonDecode(data)['coord']['lon'];
    var lat = jsonDecode(data)['coord']['lat'];
    print(lon);
    print(lat);
  }

  @override
  initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
