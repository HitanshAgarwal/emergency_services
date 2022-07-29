import 'package:emergency_services/citizenProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart' as c;

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String username="";
  String pw="";
  Future<void> navigateToPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CitizenProfile()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                      username=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Email id'),
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
                if(c.emailC.indexOf(username) >=0 && c.passwordC.indexOf(pw) >=0)
                  {
                    c.curr= c.emailC.indexOf(username);
                    navigateToPage(context);
                  }
              }, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );

  }
}