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
  bool _topTightFit = false;
  bool _bottomExpanded = false;
  toggleTop() {
    setState(() {
      _topTightFit = !_topTightFit;
    });
  }

  toggleBottom() {
    setState(() {
      _bottomExpanded = !_bottomExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    Container topContainer = Container(
      child: Text('Top Container'),
      constraints: BoxConstraints(
        maxHeight: 100,
        minHeight: 100,
        maxWidth: 100,
        minWidth: 100,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 10,
        ),
        color: Colors.blue,
      ),
      padding: EdgeInsets.all(
        10,
      ),
    );
    Container bottomContainer = Container(
      child: Text('Bottom Container'),
      constraints: BoxConstraints(
        maxHeight: 100,
        minHeight: 100,
        maxWidth: 100,
        minWidth: 100,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 10,
        ),
        color: Colors.yellow,
      ),
      padding: EdgeInsets.all(
        10,
      ),
    );

    Widget topWidget = Flexible(
      child: bottomContainer,
      fit: _topTightFit ? FlexFit.tight : FlexFit.loose,
    );

    Widget bottomWidget =
        _bottomExpanded ? Expanded(child: bottomContainer) : bottomContainer;

    String toolbarTextTop = "Top (" + (_topTightFit ? "tight" : "loose") + ")";
    String toolbarTextBottom =
        "Bottom (" + (_bottomExpanded ? "expanded" : "not expanded") + ")";
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), actions: <Widget>[
        FlatButton.icon(
            icon: Icon(_topTightFit
                ? Icons.keyboard_arrow_up
                : Icons.keyboard_arrow_up),
            label: Text(toolbarTextTop),
            onPressed: () => toggleTop()),
        FlatButton.icon(
            icon: Icon(_bottomExpanded
                ? Icons.keyboard_arrow_down
                : Icons.keyboard_arrow_down),
            label: Text(toolbarTextBottom),
            onPressed: () => toggleBottom())
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            topWidget,
            bottomWidget,
          ],
        ),
      ),
    );
  }
}
