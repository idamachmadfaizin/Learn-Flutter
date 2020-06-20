import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.archive),
              Text(
                'This is Popular Tab',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Card(
            child: Column(
              children: <Widget>[
                Image.network('https://i0.wp.com/wp.laravel-news.com/wp-content/uploads/2016/11/laravel-query-dump.png'),
                Text('Image Tab Home')
              ],
            ),
          )
        ],
      ),
    );
  }
}
