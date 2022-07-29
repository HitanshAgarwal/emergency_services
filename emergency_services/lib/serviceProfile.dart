import 'package:flutter/material.dart';
import 'constants.dart' as c;

class ServiceProfile extends StatefulWidget {
  const ServiceProfile({Key? key}) : super(key: key);

  @override
  _ServiceProfileState createState() => _ServiceProfileState();
}

class _ServiceProfileState extends State<ServiceProfile> {
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //ith service in the local array
                Text("Organization/Sevice name: "+c.nameS[c.cntS], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white)),
                Text("Phone No: "+c.phoneS[c.curr], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white)),
                Text("Address: "+c.addressS[c.curr], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white)),
                Text("Email id: "+c.emailS[c.curr], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white))
              ]
          ),
        )
    );;
  }
}
