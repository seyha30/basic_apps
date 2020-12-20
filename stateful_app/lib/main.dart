import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: EmptyWidget(title: 'Home',),
    );
  }

}

  class EmptyWidget extends StatefulWidget {
    final String title;
  EmptyWidget({Key key,this.title}):super(key: key);
  @override
  _EmptyWidgetState createState() {
    _EmptyWidgetState();
  }

  }
  
  class _EmptyWidgetState extends State<EmptyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Text('ok'),
      ),
    );
  }

  }