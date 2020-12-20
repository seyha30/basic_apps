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
    TextBlock(Colors.red, "Cat"),
    TextBlock(Colors.green, "\nCow"),
    TextBlock(Colors.green, "\nPig"),
    TextBlock(Colors.greenAccent, "\nDuck"),
    TextBlock(Colors.greenAccent, "\nBird"),
    TextBlock(Colors.greenAccent, "\nDog"),
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
    final List<TextSpan> textSpans = List<TextSpan>();
    for (var i = 0; i < _index; i++) {
      TextBlock textBlock = textBlocks[i];
      textSpans.add(TextSpan(
          text: textBlock.text,
          style: TextStyle(color: textBlock.color, fontSize: 32.0)));
    }
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text.rich(TextSpan(children: textSpans))],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: _incrementCounter));
  }
}
