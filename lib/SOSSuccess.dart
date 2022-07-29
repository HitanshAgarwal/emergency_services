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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SOS Successfully sent!")
          ],
        )
      )
    );
  }
}
