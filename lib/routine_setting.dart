import 'package:first_practice/first.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_practice/routine.dart';
import 'package:flutter/services.dart';

class Routine_setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Routine_Setting();
  }
}

class _Routine_Setting extends StatefulWidget {
  @override
  __Routine_SettingState createState() => __Routine_SettingState();
}

class __Routine_SettingState extends State<_Routine_Setting> {
  List<Widget> items = [];
  String routineName = '';
  TextEditingController _textFieldController = TextEditingController();
  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('저장하기'),
            content: TextField(
              controller: _textFieldController,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: "루틴 이름"),
            ),
            actions: <Widget>[
              new TextButton(
                child: new Text('저장'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => First()));
                },
              ),
              new TextButton(
                child: new Text('취소'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('루틴설정'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.save),
                onPressed: () => _displayDialog(context))
          ],
        ),
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 380,
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                        key: UniqueKey(),
                        child: ListTile(title: items[index]),
                        background: Container(
                          color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                color: Colors.red,
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                              Text(
                                '항목을 삭제 합니다.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        onDismissed: (direction) {
                          setState(() {
                            items.removeAt(index);
                          });
                        },
                      );
                    },
                  ),
                ),

                //운동 종류 선택 메뉴
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                items.add(Routine(name: '스쿼트'));
                                print("click event squart");
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              child: Text(
                                '스쿼트',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                items.add(Routine(name: '푸쉬업'));
                                print("click event push-up");
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              child: Text(
                                '푸쉬업',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                items.add(Routine(name: '플랭크'));
                                print("click event plank");
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              child: Text(
                                '플랭크',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                items.add(Routine(name: '휴식'));
                                print("click event rest");
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              child: Text(
                                '휴식',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ]),
                )
              ]),
        ),
      ),
    );
  }
}
