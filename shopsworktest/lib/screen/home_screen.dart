import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var fontSize22 = TextStyle(fontSize: 22);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        elevation: 10.0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Clicks Counter',
            style: fontSize22,
          ),
          Text(
            '0',
            style: fontSize22,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
      ),
    );
  }
}
