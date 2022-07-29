import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Text("ALERT SUCCESSFUL",
                  style: TextStyle(
                      fontSize: 20, fontFamily: "batman", color: Colors.white)),
            )));
  }
}
