import 'package:flutter/material.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Patients Address: "),
              SizedBox(child: _textForm(), height: 20, width: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Alert Radius: 5km"),
            ],
          ),
          ElevatedButton(onPressed: (){/* TODO */}, child: Text("Submit"))
        ],
      )
    );
  }
}
