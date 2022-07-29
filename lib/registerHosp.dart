import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart' as c;

class registerHosp extends StatefulWidget {
  const registerHosp({Key? key}) : super(key: key);

  @override
  _registerHospState createState() => _registerHospState();
}

class _registerHospState extends State<registerHosp> {
  String hospName="";
  String category="";
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
                      category=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Category[Medical/Fire/Police'),
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
              ElevatedButton(onPressed: (){
                c.nameS[c.cntS]= hospName;
                c.addressS[c.cntS]= address;
                c.phoneS[c.cntS]= phoneNo;
                c.emailS[c.cntS]= email;
                c.passwordS[c.cntS]= password;
                c.latitudeS[c.cntS]= latitude;
                c.longitudeS[c.cntS]= longitude;
                c.categoryS[c.cntS]= category;
                c.cntS+= 1;
              }, child: Text('Submit'), style:
              ElevatedButton.styleFrom(primary: Colors.greenAccent),)
            ],
          ),
        ),
      ),
    );
  }
}