import 'package:flutter/material.dart';

void main() => runApp(RowMainAxisAlignment());

class RowMainAxisAlignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: MyHome(),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("MainAxisAlignment"),
                const Text('is'),
                const Text('center'),
              ]),
              const Text("1st child expanded:"),
              Row(
                children: [
                  const Text("MainAxisAlignment"),
                  const Text('is'),
                  const Expanded(child: Text('end')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("MainAxisAlignment"),
                  const Text('is'),
                  const Text('space around'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("MainAxisAlignment"),
                  const Text('is'),
                  const Text('spaceEvenly'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("MainAxisAlignment"),
                  const Text('is'),
                  const Text('spaceBetween'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("MainAxisAlignment"),
                  const Text('is'),
                  const Text('spaceBetween'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
