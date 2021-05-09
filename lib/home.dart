import 'package:first_practice/record.dart';
import 'package:first_practice/setting.dart';
import 'package:first_practice/first.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _home createState() => _home();
}

class _home extends State<home> {
  int _selectedIndex = 0;
  final List<Widget> _children = <Widget>[
    First(),
    Record(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex,
        
        //현재 선택된 Index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            print(_selectedIndex);
          });
        },

        items: [
          BottomNavigationBarItem(
            title: Text(
              '운동',
              style: TextStyle(fontSize: 25, fontFamily: 'pen'),
            ),
            icon: Icon(Icons.directions_bike),
          ),
          BottomNavigationBarItem(
            title: Text(
              '기록',
              style: TextStyle(fontSize: 25, fontFamily: 'pen'),
            ),
            icon: Icon(Icons.assignment_rounded),
          ),
          BottomNavigationBarItem(
            title: Text(
              '설정',
              style: TextStyle(fontSize: 25, fontFamily: 'pen'),
            ),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
    );
  }
}

List _widgetOptions = [
  Text(
    '운동',
    style: TextStyle(fontSize: 30, fontFamily: 'Pen'),
  ),
  Text(
    '기록',
    style: TextStyle(fontSize: 30, fontFamily: 'Pen'),
  ),
  Text(
    '설정',
    style: TextStyle(fontSize: 30, fontFamily: 'Pen'),
  ),
];
