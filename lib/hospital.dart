import 'package:flutter/material.dart';
class Hospital extends StatelessWidget {
  @override
  double latitude, longitude;
  String name;
  Hospital({required this.latitude, required this.longitude, required this.name});
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("ALERT SUCCESFUL"),
    );
  }
}
