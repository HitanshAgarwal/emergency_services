import 'package:flutter/material.dart';

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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //ith service in the local array
              Text("Organization/Sevice name: "+name[i]),
              Text("Phone No: "+phone[i]),
              Text("Address: "+address[i]),
              Text("Pin code: "+pin[i]),
              Text("Email id: "+email[i])
            ]
        )
    );;
  }
}
