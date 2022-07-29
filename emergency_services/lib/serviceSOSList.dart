import 'package:flutter/material.dart';
import 'constants.dart' as c;

class ServiceSOSList extends StatefulWidget {
  const ServiceSOSList({Key? key}) : super(key: key);

  @override
  _ServiceSOSListState createState() => _ServiceSOSListState();
}

class _ServiceSOSListState extends State<ServiceSOSList> {
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
        child: ListView(
          children: [
            for (int i = 0; i < c.cntC; i++)
              if (c.serviceCenter[i] == c.nameS[c.curr])
                ListTile(title: Text(c.nameC[i], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white),),
                    subtitle: Text(c.addressC[i], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white),),
                    trailing: Text(c.phoneC[i], style: TextStyle(fontSize: 15, fontFamily: "futura", color: Colors.white),), onLongPress: (){
                  c.serviceCenter[i] = 0;
                }),
          ],
        ),
      )
    );
  }
}
