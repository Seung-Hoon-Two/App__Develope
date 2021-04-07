import 'package:flutter/material.dart';

class First extends StatelessWidget {
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
