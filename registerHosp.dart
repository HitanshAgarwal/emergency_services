import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class registerHosp extends StatefulWidget {
  const registerHosp({Key? key}) : super(key: key);

  @override
  _registerHospState createState() => _registerHospState();
}

class _registerHospState extends State<registerHosp> {
  String hospName="";
  String name="";
  String email="";
  String phoneNo="";
  String password="";
  String address="";
  String latitude="";
  String longitude="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.greenAccent,

      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      hospName=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Hospital Name'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      name=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Employee Name'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      email=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Email'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      phoneNo=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Phone number'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      address=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Address'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      latitude=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Latitude'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      longitude=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Longitude'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      password=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Password'),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(onPressed: (){}, child: Text('Submit'), style:
              ElevatedButton.styleFrom(primary: Colors.greenAccent),)
            ],
          ),
        ),
      ),
    );

  }
}
