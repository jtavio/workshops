import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
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
            '$counter',
            style: fontSize22,
          )
        ],
      )),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
