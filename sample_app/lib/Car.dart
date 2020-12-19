import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Car extends StatelessWidget{

  final String make;
  final String model;
  final String imageSrc;
  Car(this.make,this.model,this.imageSrc):super();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Center(
            child: Column(
              children: [
                Text(this.make),
                Text(this.model),
                Image.network(this.imageSrc)
        ],
      ),
    )));
  }

}