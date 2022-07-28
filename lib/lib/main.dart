import 'package:flutter/material.dart';
import 'package:emergency_services/LOC.dart';
import 'package:emergency_services/alert.dart';
void main() async {

  runApp( MaterialApp(
    home: LOC(),
      routes:{
        '/alert' : (context) => Alert(),
      }
  ));
}
