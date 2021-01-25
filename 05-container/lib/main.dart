import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    void _spin() {
      _controller.forward(from: 0.0);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: new RotationTransition(
          // turns: AlwaysStoppedAnimation(_animation.value),
          turns: AlwaysStoppedAnimation(98),
          child: Icon(
            Icons.airplanemode_active,
            size: 150.0,
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          color: Colors.redAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _spin,
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
