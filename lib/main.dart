import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  Color _backgroundColor;
  Random _randomInt;

  @override
  initState() {
    _randomInt = new Random();
    _backgroundColor = Colors.white;
    super.initState();
  }

  void _onFabPress() {
    setState(() {
      _backgroundColor = Colors.primaries[_randomInt.nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: _backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello Solid Software'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFabPress,
        tooltip: 'Color Swap',
        child: Icon(Icons.autorenew),
      ),
    );
  }
}
