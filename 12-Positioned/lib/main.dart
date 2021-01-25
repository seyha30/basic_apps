import 'package:flutter/material.dart';
import 'dart:math';

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
double _top = 0.0;
double _left = 0.0;
List<Widget> widgetList = [];
final _random = new Random();
int next(int min, int max) => min + _random.nextInt(max - min);
void _addLayer() {
setState(() {
widgetList.add(Positioned(
left: _left,
top: _top,
child: Container(
width: 100.0,
height: 100.0,
decoration: BoxDecoration(
border: Border.all(
color: Colors.grey,
width: 2.0,
),
color: Color.fromRGBO(
next(0, 255), next(0, 255), next(0, 255), 0.5),
))));
});
_top += 30;
_left += 30;
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
 
        title: Text(widget.title),
      ),
      body:  Stack(children: widgetList),
      floatingActionButton: new FloatingActionButton(
onPressed: _addLayer,
tooltip: 'Increment',
child: new Icon(Icons.add),
), // 
    );
  }
}
