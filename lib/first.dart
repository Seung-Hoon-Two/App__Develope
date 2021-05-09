import 'package:flutter/material.dart';
import 'package:first_practice/routine_setting.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: '운동',
      home: _First(),
    );
  }
}

class _First extends StatefulWidget {
  @override
  __FirstState createState() => __FirstState();
}

class __FirstState extends State<_First> {
  final List<String> course = <String>['가슴 부수기', '이두,어깨'];
  final List<bool> _isChecked = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('운동'),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            child: ListView.separated(
              padding: EdgeInsets.all(8),
              itemCount: course.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ListTile(
                          title: Text('${course[index]}'),
                        ),
                      ),
                      Expanded(
                        child: Checkbox(
                          value: _isChecked[index],
                          onChanged: (value) {
                            setState(() {
                              _isChecked[index] = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),
          Column(
            children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Routine_setting()));
                },
                child: const Icon(Icons.add),
                backgroundColor: Colors.blueGrey,
              ),
              Container(padding: EdgeInsets.only(bottom: 75.0)),
              ElevatedButton(
                child: Text(
                  'START',
                  style: TextStyle(fontSize: 45),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
