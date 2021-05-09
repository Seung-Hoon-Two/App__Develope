import 'package:flutter/material.dart';

class Routine extends StatefulWidget {
  final String name;
  Routine({Key key, this.name}) : super(key: key);

  @override
  _RoutineState createState() => _RoutineState();
}

class _RoutineState extends State<Routine> {
  int _counter = 0;
  void incrementCounter() {
    _counter++;
  }

  void decrementCounter() {
    if (_counter > 0) _counter--;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: Colors.grey[400], width: 1),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                this.widget.name,
                style: TextStyle(fontSize: 40),
              ),
              Row(
                children: [
                  FloatingActionButton(
                      child: const Icon(
                        Icons.remove,
                        size: 40,
                      ),
                      mini: true,
                      backgroundColor: Colors.lightBlue[200],
                      onPressed: () {
                        setState(() {
                          this.decrementCounter();
                        });
                      }),
                  Container(
                    child: Text('${this._counter}',
                        style: TextStyle(fontSize: 35)),
                  ),
                  FloatingActionButton(
                      child: const Icon(
                        Icons.add,
                        size: 40,
                      ),
                      mini: true,
                      backgroundColor: Colors.lightBlue[200],
                      onPressed: () {
                        setState(() {
                          this.incrementCounter();
                        });
                      }),
                ],
              ),
            ]));
  }
}
