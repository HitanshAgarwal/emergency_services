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
            title: Text("Profile", style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white)),
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: true,
            elevation: 0
        ),
        extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Name: "+nameC[curr], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white),),
            Text("Phone No: "+phoneC[curr], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white)),
            Text("Address: "+addressC[curr], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white)),
            Text("Email id: "+emailC[curr], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white))

          ]
        ),
      )
    );
  }
}