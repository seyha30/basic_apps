import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Your',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const Text(
            'App',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const Text(
            'Go',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const Text(
            'Here',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
