import 'package:flutter/material.dart';
import 'package:text_widget_app/TextBlock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final List<TextBlock> textBlocks = [
    TextBlock(Colors.red, "Every"),
    TextBlock(Colors.green, "SchoolBoy"),
    TextBlock(Colors.green, "\nKnows"),
    TextBlock(Colors.greenAccent, "Who"),
    TextBlock(Colors.greenAccent, "\nimprisoned"),
    TextBlock(Colors.greenAccent, "\nMontezuma"),
  ];
  void _incrementCounter() {
    setState(() {
      if (_index < textBlocks.length) {
        _index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: _incrementCounter));
  }
}
