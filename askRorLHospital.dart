import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emergency_services/loginHosp.dart';
import 'package:emergency_services/registerHosp.dart';
class askRorLHospital extends StatefulWidget {
  const askRorLHospital({Key? key}) : super(key: key);

  @override
  _askRorLHospital createState() => _askRorLHospital();
}

class _askRorLHospital extends State<askRorLHospital> {
  Future<void> navigateToRegisterShop(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => registerHosp()));
  }

  Future<void> navigateToLoginShop(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => loginHosp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 0.4 * MediaQuery
                      .of(context)
                      .size
                      .height),
                  ElevatedButton(onPressed: () {
                    navigateToLoginShop(context);
                  }, child: Text('Sign In'), style:
                  ElevatedButton.styleFrom(primary: Colors.greenAccent)),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      navigateToRegisterShop(context);
                    }, child: Text('Sign Up'), style:
                  ElevatedButton.styleFrom(primary: Colors.greenAccent),)
                ])));
  }
}