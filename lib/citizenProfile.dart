import 'package:emergency_services/constants.dart';
import 'package:flutter/material.dart';

class CitizenProfile extends StatefulWidget {
  const CitizenProfile({Key? key}) : super(key: key);

  @override
  _CitizenProfileState createState() => _CitizenProfileState();
}

class _CitizenProfileState extends State<CitizenProfile> {
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Name: "+nameC[curr]),
          Text("Phone No: "+phoneC[curr]),
          Text("Address: "+addressC[curr]),
          Text("Email id: "+emailC[curr])

        ]
      )
    );
  }
}