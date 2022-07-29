import 'package:flutter/material.dart';

class SOSSuccess extends StatefulWidget {
  const SOSSuccess({Key? key}) : super(key: key);

  @override
  _SOSSuccessState createState() => _SOSSuccessState();
}

class _SOSSuccessState extends State<SOSSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: true,
          elevation: 0
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpeg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SOS Successfully sent!", style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white),)
            ],
          )
        ),
      )
    );
  }
}
