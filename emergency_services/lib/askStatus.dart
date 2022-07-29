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
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => askRorLHospital()));
  }

  Future<void> navigateToLorRCustomer(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => askRorLCustomer()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/background.jpeg"), fit: BoxFit.cover),
      ),
      child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(height: 0.4 * MediaQuery.of(context).size.height),
        ElevatedButton(
            onPressed: () {
              navigateToLorRCustomer(context);
            },
            child: Text(
              'User',
              style: TextStyle(
                  fontSize: 20, fontFamily: "batman", color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.indigo.shade600),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Colors.amber.shade700),
              )),
            )),
        SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            navigateToLorRShop(context);
          },
          child: Text(
            'Hospital Staff',
            style: TextStyle(
                fontSize: 20, fontFamily: "batman", color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.indigo.shade600),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.amber.shade700),
            )),
          ),
        )
      ])),
    ));
  }
}
