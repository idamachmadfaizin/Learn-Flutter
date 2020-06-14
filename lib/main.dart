import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First Flutter'),
            backgroundColor: Colors.red,
          ),
          body: Center(
              child: Container(
                  color: Colors.lightBlue,
                  width: 150,
                  height: 100,
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta quos odit voluptatum, numquam placeat omnis cum sint saepe rerum tempore, a aliquam natus, eaque magnam inventore fugiat! Non, nisi pariatur?',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )))),
    );
  }
}
