import 'package:emergency_services/askStatus.dart';
import 'package:emergency_services/citizenProfile.dart';
import 'package:emergency_services/citizenSOS.dart';
import 'package:flutter/material.dart';

class CitizenMenu extends StatefulWidget {
  const CitizenMenu({Key? key}) : super(key: key);

  @override
  _CitizenMenuState createState() => _CitizenMenuState();
}

class _CitizenMenuState extends State<CitizenMenu> {

  Future<void> navigateToProfile(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CitizenProfile()));
  }

  Future<void> navigateToSOS(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CitizenSOS()));
  }

  Future<void> navigateToLogin(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => askStatus()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){navigateToProfile(context);}, child: Text("Profile")),
            ElevatedButton(onPressed: (){navigateToSOS(context);}, child: Text("SOS")),
            ElevatedButton(onPressed: (){navigateToLogin(context);}, child: Text("Log out"))
          ]
        ),
      )
    );
  }
}
