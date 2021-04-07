import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('설정')),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.bluetooth),
            title: Text('장치 연결'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('설정'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('설정'),
          ),
        ],
      ),
    );
  }
}
