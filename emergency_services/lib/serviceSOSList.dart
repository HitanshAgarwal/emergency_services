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
              image: AssetImage("images/background.jpeg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            for (int i = 0; i < c.cntC; i++)
              if (c.serviceCenter[i] == c.nameS[c.curr])
                ListTile(title: c.nameC[i], subtitle: c.addressC[i], leading: c.phoneC[i], onLongPress: (){
                  c.serviceCenter[i] = 0;
                }),
          ],
        ),
      )
    );
  }
}
