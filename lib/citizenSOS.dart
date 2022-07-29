import 'package:emergency_services/SOSSuccess.dart';
import 'package:flutter/material.dart';
import 'constants.dart' as c;

class CitizenSOS extends StatefulWidget {
  const CitizenSOS({Key? key}) : super(key: key);

  @override
  _CitizenSOSState createState() => _CitizenSOSState();
}

class _CitizenSOSState extends State<CitizenSOS> {
  Future<void> navigateToSuccessful(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SOSSuccess()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: true,
            elevation: 0
        ),
        extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          for(int i=0; i<c.cntS; i++)
            ElevatedButton(
              onPressed: (){navigateToSuccessful(context);},
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children:
                      [
                        Text(c.nameS[i]),
                        Text(c.categoryS[i])
                      ]
                  ),
                ),
              ),
            )
        ],
      )
    );
  }
}
