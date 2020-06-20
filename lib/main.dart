import 'package:flutter/material.dart';

import 'tabs/Popular.dart';
import 'tabs/home.dart';
import 'tabs/news.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Tabs'),
          leading: Icon(Icons.home),
          backgroundColor: Colors.red[800],
          // Tabs Button
          bottom: TabBar(
            controller: _tabController,
            tabs: <Tab>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.note),
              ),
              Tab(
                icon: Icon(Icons.poll),
              ),
            ],
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children: <Widget>[Home(), Popular(), News()]),
      ),
    );
  }
}
