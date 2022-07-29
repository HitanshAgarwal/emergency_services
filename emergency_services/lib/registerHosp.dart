import 'package:emergency_services/loginHosp.dart';
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

  Future<void> navigateToPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => loginHosp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register', style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white)),
        backgroundColor: Colors.transparent,

      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover),
        ),
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
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Hospital Name', enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),),
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
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Category[Medical/Fire/Police]', enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),),
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
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Email', enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),),
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
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Phone number', enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),),
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
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Address', enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),),
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
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Latitude', enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),),
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
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Longitude', enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),),
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
                  InputDecoration(filled: true, fillColor: Colors.white, hintText: 'Password', enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.indigo.shade700, width: 2.0),
                    ),),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(onPressed: (){
                setState(() {

                c.nameS.add(hospName);
                c.addressS.add(address);
                c.phoneS.add(phoneNo);
                c.emailS.add(email);
                c.passwordS.add(password);
                c.latitudeS.add(latitude);
                c.longitudeS.add(longitude);
                c.categoryS.add(category);
                c.cntS+= 1;
                navigateToPage(context);

                });
              }, child: Text('Submit', style: TextStyle(fontSize: 20, fontFamily: "batman", color: Colors.white),), style:
              ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo.shade600),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: Colors.amber.shade700),
                )),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}