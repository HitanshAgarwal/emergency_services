import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emergency_services/login.dart';
import 'package:emergency_services/registerC.dart';
import 'package:emergency_services/registerHosp.dart';
class askRorLCustomer extends StatefulWidget {
  const askRorLCustomer({Key? key}) : super(key: key);

  @override
  _askRorLCustomer createState() => _askRorLCustomer();
}

class _askRorLCustomer extends State<askRorLCustomer> {
  Future<void> navigateToRegisterCustomer(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => registerC()));
  }

  Future<void> navigateToLoginCustomer(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => loginPage()));
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
                    navigateToLoginCustomer(context);
                  }, child: Text('Sign In'), style:
                  ElevatedButton.styleFrom(primary: Colors.blue)),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      navigateToRegisterCustomer(context);
                    }, child: Text('Sign Up'), style:
                  ElevatedButton.styleFrom(primary: Colors.blue),)
                ])));
  }
}