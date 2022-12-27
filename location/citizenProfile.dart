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
          //ith citizen in the local array

          Text("Name: "+name[i]),
          Text("Phone No: "+phone[i]),
          Text("Address: "+address[i]),
          Text("Pin code: "+pin[i]),
          Text("Email id: "+email[i])

        ]
      )
    );
  }
}