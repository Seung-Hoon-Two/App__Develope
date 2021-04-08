import 'package:flutter/material.dart';

class Device_connect extends StatefulWidget {
  @override
  _Device_connectState createState() => _Device_connectState();
}

class _Device_connectState extends State<Device_connect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('장치 설정')),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.bluetooth),
            title: Text('장치 검색'),
          ),
        ],
      ),
    );
  }
}
