import 'package:flutter/material.dart';

class CitizenSOS extends StatefulWidget {
  const CitizenSOS({Key? key}) : super(key: key);

  @override
  _CitizenSOSState createState() => _CitizenSOSState();
}

class _CitizenSOSState extends State<CitizenSOS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: true,
            elevation: 0
        ),
        extendBodyBehindAppBar: true,
      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text("Medical Emergency")),//ambulance
          ElevatedButton(onPressed: (){}, child: Text("Fire Emergency")),//fire
          ElevatedButton(onPressed: (){}, child: Text("Miscellaneous Emergency"))//police
        ]
      )
    );
  }
}
