import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:emergency_services/hospital.dart';
class LOC extends StatefulWidget {
  const LOC({Key? key}) : super(key: key);

  @override
  State<LOC> createState() => _LOCState();
}

class _LOCState extends State<LOC> {
  List<Hospital> Li = [
    Hospital(name: "Ruby", latitude: 22.59, longitude: 88.39,),
    Hospital(name: "Apollo", latitude: 22.62, longitude: 88.33,),
    Hospital(name: "Nightingale", latitude: 22.59, longitude: 92.9,),
  ];
  Location location = Location();
  bool _serviceEnabled = true;
  late PermissionStatus _permissionGranted ;
  late LocationData _locationData;
  Future<void> _getUserLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    print(_locationData);
  }

  @override
  Widget build(BuildContext context) {
    _getUserLocation();
    double? la = Li[2].latitude;
    double? aa = la+.04;
    double? ba = la-.04;
    double? lo = Li[2].longitude;
    double? ao = lo+.04;
    double? bo = lo-.04;
    double? lx = _locationData.latitude ,ly = _locationData.longitude;
    bool a = false;
    String na = Li[2].name;
    if(lx! <= aa && lx >= ba)
    {
      if(ly! <= ao && ly >= bo)
      {
        a = true;
      }
    }
    print(a);
    print(na);
    if(a == true)
    {
      Navigator.pushNamed(context, '/alert');
    }
    return Text("${_locationData.latitude}");
  }
}