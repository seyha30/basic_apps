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
  bool _topExpanded = false;
  bool _bottomExpanded = false;
  toggleTop() {
    setState(() {
      _topExpanded = !_topExpanded;
    });
  }

  toggleBottom() {
    setState(() {
      _bottomExpanded = !_bottomExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    Container _topContainer = Container(
      padding: EdgeInsets.all(10),
      child: Text('Top Container'),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
    Container _bottomContainer = Container(
      padding: EdgeInsets.all(10),
      child: Text('Bottom Container'),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.yellow,
          width: 1,
        ),
      ),
    );

    Widget topWidget =
        _topExpanded ? Expanded(child: _topContainer) : _topContainer;
    Widget bottomWidget =
        _bottomExpanded ? Expanded(child: _bottomContainer) : _bottomContainer;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          FlatButton.icon(
            onPressed: toggleTop,
            icon: Icon(_topExpanded ? Icons.expand_more : Icons.expand_less),
            label: Text('Top'),
          ),
          FlatButton.icon(
            onPressed: toggleBottom,
            icon: Icon(_bottomExpanded ? Icons.expand_more : Icons.expand_less),
            label: Text('Bottom'),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            topWidget,bottomWidget
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
