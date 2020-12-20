import 'package:flutter/material.dart';

void main() => runApp(IconApp());

class IconApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: IconAppPage(),
    );
  }
}

class IconAppPage extends StatelessWidget {
  Row row1 = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Icon(
        Icons.add,
        size: 28,
      ),
      const Text('Default size 24, default color black'),
    ],
  );
  Row row2 = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Icon(
        Icons.add,
        size: 48.0,
      ),
      const Text('Default size 48, default color black'),
    ],
  );
  Row row3 = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Icon(
        Icons.add,
        size: 96,
      ),
      const Text('Default size 96, default color black'),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IConAppBar'),
        ),
        body: Column(
          children: [row1, row2, row3],
        ));
  }
}
