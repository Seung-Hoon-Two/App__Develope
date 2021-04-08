import 'package:first_practice/device_connect.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '설정',
      home: _Setting(),
    );
  }
}

class _Setting extends StatefulWidget {
  @override
  __SettingState createState() => __SettingState();
}

class __SettingState extends State<_Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('설정')),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.bluetooth),
            title: Text('장치 연결'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Device_connect()));
            },
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
