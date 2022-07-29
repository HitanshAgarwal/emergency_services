import 'package:flutter/material.dart';
import 'constants.dart' as c;

class ServiceAlert extends StatefulWidget {
  const ServiceAlert({Key? key}) : super(key: key);

  @override
  _ServiceAlertState createState() => _ServiceAlertState();
}

class _ServiceAlertState extends State<ServiceAlert> {
  TextEditingController cont= new TextEditingController();

  Widget _textForm(){
    return TextFormField(
      controller: cont,
      decoration: InputDecoration(filled: true, fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0),
      ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: Colors.indigo.shade700, width: 2.0),
        ),),
    );
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
              image: AssetImage("images/background.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Patients Address: ",  style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white)),
                SizedBox(child: _textForm(), height: 20, width: 100),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Alert Radius: 5km", style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white)),
              ],
            ),
            ElevatedButton(onPressed: (){/* TODO */}, child: Text("Submit", style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white)), style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigo.shade600),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Colors.amber.shade700),
              )),
            ),)
          ],
        ),
      )
    );
  }
}
