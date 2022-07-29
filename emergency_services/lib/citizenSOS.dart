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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpeg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            for(int i=0; i<c.cntS; i++)
              ElevatedButton(
                onPressed: (){
                  c.serviceCenter[c.curr] = c.nameS[i];
                  navigateToSuccessful(context);
                  },
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children:
                        [
                          Text(c.nameS[i], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white)),
                          Text(c.categoryS[i], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white))
                        ]
                    ),
                  ),
                ),
              )
          ],
        ),
      )
    );
  }
}
