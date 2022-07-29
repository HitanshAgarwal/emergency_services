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
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ServiceProfile()));
  }

  Future<void> navigateToAlert(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ServiceAlert()));
  }

  Future<void> navigateToSOSList(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ServiceSOSList()));
  }

  Future<void> navigateToLogIn(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => askStatus()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/background.png"), fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  navigateToProfile(context);
                },
                child: Text("Profile", style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.indigo.shade600),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: Colors.amber.shade700),
                  )),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToAlert(context);
                },
                child: Text("Alert", style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.indigo.shade600),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: Colors.amber.shade700),
                  )),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToSOSList(context);
                },
                child: Text("SOS List", style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.indigo.shade600),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: Colors.amber.shade700),
                  )),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToLogIn(context);
                },
                child: Text("Log out", style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.indigo.shade600),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: Colors.amber.shade700),
                  )),
                ),
              )
            ]),
      ),
    ));
  }
}
