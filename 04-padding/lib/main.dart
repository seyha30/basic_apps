import 'package:flutter/material.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _index = 0;
  static const double TWENTY = 20.0;
  static const List<String> _title = [
    'all 20.0',
    'right 20.0',
    'left 20.0',
    'top 20.0',
    'bottom 20.0',
    'sym horizontal 20.0',
    'sym vertical 20.0',
  ];
  static const List<EdgeInsets> _edgetInsets = [
    const EdgeInsets.all(TWENTY),
    const EdgeInsets.only(right: TWENTY),
    const EdgeInsets.only(left: TWENTY),
    const EdgeInsets.only(top: TWENTY),
    const EdgeInsets.only(bottom: TWENTY),
    const EdgeInsets.symmetric(horizontal: TWENTY),
    const EdgeInsets.symmetric(vertical: TWENTY),
  ];
  final Container _childContainer = Container(
    color: Colors.blue,
  );

  void _incrementCounter() {
    setState(() {
      _counter++;
      _index++;
      if (_index >= _title.length) {
        _index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Padding padding = Padding(
      padding: _edgetInsets[_index],
      child: _childContainer,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: padding,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Text(
          _title[_index].toString(),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
