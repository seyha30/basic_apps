import 'package:flutter/cupertino.dart';

class Car extends StatelessWidget{

  final String make;
  final String model;
  final String imageSrc;
  Car(this.make,this.model,this.imageSrc):super();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(this.make),
          Text(this.model),
          Image.network(this.imageSrc)
        ],
      ),
    );
  }

}