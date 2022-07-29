import 'package:flutter/material.dart';

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
        child: ListView(
          children: [
            //TODO
          ],
        ),
      )
    );
  }
}
