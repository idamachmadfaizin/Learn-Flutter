import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('App Bar Title'),
          backgroundColor: Colors.red[700],
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.archive),
                  Text('Artikel Terbaru'),
                ],
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.network('https://flutter.io/images/homepage/header-illustration.png'),
                    Text('Belajar Flutter Card')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
