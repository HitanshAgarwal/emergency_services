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
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CitizenProfile()));
  }

  Future<void> navigateToSOS(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CitizenSOS()));
  }

  Future<void> navigateToLogin(context) async {
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
                child: Text("Profile",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "batman",
                        color: Colors.white)),
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
                  navigateToSOS(context);
                },
                child: Text("SOS",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "batman",
                        color: Colors.white)),
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
                  navigateToLogin(context);
                },
                child: Text("Log out",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "batman",
                        color: Colors.white)),
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
