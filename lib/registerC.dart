import 'package:flutter/material.dart';
import 'constants.dart' as c;

class registerC extends StatefulWidget {
  const registerC({Key? key}) : super(key: key);

  @override
  _registerCState createState() => _registerCState();
}

class _registerCState extends State<registerC> {
  String name="";
  String email="";
  String phoneNo="";
  String password="";
  String address="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.blue,

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
                      name=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Name'),
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
                c.nameC[c.cntC]= name;
                c.addressC[c.cntC]= address;
                c.phoneC[c.cntC]= phoneNo;
                c.emailC[c.cntC]= email;
                c.passwordC[c.cntC]= password;
                c.cntC+= 1;
              }, child: Text('Submit'), style:
              ElevatedButton.styleFrom(primary: Colors.blue),)
            ],
          ),
        ),
      ),
    );

  }
}