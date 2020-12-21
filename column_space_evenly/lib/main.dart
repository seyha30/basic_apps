import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RawMaterialButton redButton = RawMaterialButton(
      onPressed: () => debugPrint('Red Button Pressed'),
      constraints: BoxConstraints(maxHeight: 500.0, minWidth: 500.0),
      shape: CircleBorder(),
      fillColor: Colors.red,
      elevation: 2.0,
      padding: EdgeInsets.all(15.0),
    );
    RawMaterialButton blueButton = RawMaterialButton(
      onPressed: () => debugPrint('Red Button Pressed'),
      constraints: BoxConstraints(maxHeight: 136.0, minWidth: 188),
      shape: CircleBorder(),
      fillColor: Colors.blue,
      elevation: 2.0,
      padding: EdgeInsets.all(15.0),
    );
    RawMaterialButton greenButton = RawMaterialButton(
      onPressed: () => debugPrint('Red Button Pressed'),
      constraints: BoxConstraints(maxHeight: 136.0, minWidth: 188),
      shape: CircleBorder(),
      fillColor: Colors.green,
      elevation: 2.0,
      padding: EdgeInsets.all(15.0),
    );
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          redButton,
          greenButton,
          blueButton,
        ],
      ),
    ));
  }
}
