import 'package:flutter/material.dart';
import 'Car.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(
        title:'Car'
      ),
    );
  }

}
class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: ListView(
        children: <Widget>[
          Car("BMW", "M3", "https://media.ed.edmunds-media.com/nissan/sentra/2017/oem/2017_nissan_sentra_sedan_sr-turbo_fq_oem_4_150.jpg"),
          Car("Audi", "GRT", "https://media.ed.edmunds-media.com/nissan/gt-r/2018/oem/2018_nissan_gt-r_coupe_nismo_fq_oem_1_150.jpg"
          ),

        ],
      ),
    );
  }

}