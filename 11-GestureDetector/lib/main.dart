import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

class _MyHomePageState extends State<MyHomePage> {
  String _log = '';

  _clear() {
    setState(() {
      _log = '';
    });
  }

  void _logGuesture(String logText) {
    setState(() {
      _log += '\n';
      _log += logText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Text('Gesture Me'),
              onTap: () => _logGuesture('onTap'),
              onTapDown: null,
              onTapUp: (details) => _logGuesture('onTapUp:${details}'),
              onTapCancel: null,
              onDoubleTap: null,
              onLongPress: null,
              onVerticalDragDown: null,
              onVerticalDragStart: null,
              onVerticalDragUpdate: null,
            ),
            Container(
              child: SingleChildScrollView(
                child: Text('$_log'),
              ),
              constraints: BoxConstraints(
                minHeight: 200,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 1,
                ),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
            ),
            RaisedButton(
              onPressed: _clear,
              child: Text('Clear'),
            )
          ],
        ),
      ),
    );
  }
}
