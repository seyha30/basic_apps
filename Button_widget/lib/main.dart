import 'package:flutter/material.dart';

void main() => runApp(ButtonApp());

class ButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Fullter Demo',
        home: HomeWidget(),
        theme: ThemeData(primarySwatch: Colors.blue),
      ),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  Row flateRow = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      FlatButton(
          onPressed: () => debugPrint('Flate Button Pressed'),
          child: Text('Flate Button')),
    ],
  );
  Row raisedButtonRow = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      RaisedButton(
          onPressed: () => debugPrint('Raise Button Pressed'),
          child: Text('Raise Button')),
    ],
  );
  Row iconButtonRow = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        onPressed: () => debugPrint('ICon Button Pressed'),
        icon: Icon(Icons.add),
      ),
    ],
  );

  Row dropdownButton = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      DropdownButton<String>(
        onChanged: (value) => debugPrint('${value}'),
        items: <String>['Mens', 'Womans'].map((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
      )
    ],
  );

  Row outLinButton = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      OutlineButton(
          child: Text('OutLinButton'),
          onPressed: () => debugPrint('OutLinButton Pressed'))
    ],
  );

  Row floatingActionButton = Row(children: [
    FloatingActionButton(
      onPressed: () => debugPrint('FloatingAction Button'),
      child: Text('FloatingActionButton'),
    )
  ]);

  Row backButton = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      BackButton(
        onPressed: () => debugPrint('BackButton Pressed!'),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: Column(
          children: <Widget>[
            flateRow,
            raisedButtonRow,
            iconButtonRow,
            dropdownButton,
            outLinButton,
            backButton,
            floatingActionButton,
          ],
        ),
      ),
    );
  }
}
