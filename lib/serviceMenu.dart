import 'package:emergency_services/askStatus.dart';
import 'package:emergency_services/serviceAlert.dart';
import 'package:emergency_services/serviceProfile.dart';
import 'package:emergency_services/serviceSOSList.dart';
import 'package:flutter/material.dart';

class ServiceMenu extends StatefulWidget {
  const ServiceMenu({Key? key}) : super(key: key);

  @override
  _ServiceMenuState createState() => _ServiceMenuState();
}

class _ServiceMenuState extends State<ServiceMenu> {

  Future<void> navigateToProfile(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceProfile()));
  }

  Future<void> navigateToAlert(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceAlert()));
  }

  Future<void> navigateToSOSList(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceSOSList()));
  }

  Future<void> navigateToLogIn(context) async {
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
                ElevatedButton(onPressed: (){navigateToAlert(context);}, child: Text("Alert")),
                ElevatedButton(onPressed: (){navigateToSOSList(context);}, child: Text("SOS List")),
                ElevatedButton(onPressed: (){navigateToLogIn(context);}, child: Text("Log out"))
              ]
          ),
        )
    );
  }
}
