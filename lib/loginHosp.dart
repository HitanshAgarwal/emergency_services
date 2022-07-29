import 'package:emergency_services/serviceProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart' as c;

class loginHosp extends StatefulWidget {
  const loginHosp({Key? key}) : super(key: key);

  @override
  _loginHospState createState() => _loginHospState();
}

class _loginHospState extends State<loginHosp> {
  String username="";
  String pw="";
  Future<void> navigateToPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceProfile()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                      username=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Username'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      pw=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Password'),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(onPressed: (){
                if(c.emailS.indexOf(username) >=0 && c.passwordS.indexOf(pw) >=0)
                {
                  c.curr= c.emailS.indexOf(username);
                  navigateToPage(context);
                }
              }, child: Text('Submit'), style:
              ElevatedButton.styleFrom(primary: Colors.greenAccent),)
            ],
          ),
        ),
      ),
    );

  }
}