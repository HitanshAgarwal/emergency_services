import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
  @override
  double latitude, longitude;
  String name;

  Hospital(
      {required this.latitude, required this.longitude, required this.name});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpeg"), fit: BoxFit.cover),
          ),
          child: Text("ALERT SUCCESFUL", style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white))),
    );
  }
}
