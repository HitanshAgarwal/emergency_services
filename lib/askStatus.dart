import 'package:emergency_services/askRorLHospital.dart';
import 'package:emergency_services/askRorLCustomer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class askStatus extends StatefulWidget {
  const askStatus({Key? key}) : super(key: key);

  @override
  _askStatus createState() => _askStatus();
}

class _askStatus extends State<askStatus> {

  Future<void> navigateToLorRShop(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => askRorLHospital()));
  }

  Future<void> navigateToLorRCustomer(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => askRorLCustomer()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 0.4*MediaQuery.of(context).size.height),
                  ElevatedButton(onPressed: (){navigateToLorRCustomer(context);}, child: Text('User'), style:
                  ElevatedButton.styleFrom(primary: Colors.blue)),
                  SizedBox(height: 50),
                  ElevatedButton(onPressed: (){navigateToLorRShop(context);}, child: Text('Hospital Staff'), style:
                  ElevatedButton.styleFrom(primary: Colors.greenAccent),)
                ])));
  }
}