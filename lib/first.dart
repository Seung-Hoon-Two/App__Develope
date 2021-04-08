import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '운동',
      home: _First(),
    );
  }
}

class _First extends StatefulWidget {
  @override
  __FirstState createState() => __FirstState();
}

class __FirstState extends State<_First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('운동')),
      body: Center(
        child: Text('코스를 추가하시오'),
      ),
    );
  }
}
