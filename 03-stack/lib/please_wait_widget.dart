import 'package:flutter/material.dart';

class PleaseWaitWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 8,
        ),
      ),
      color: Colors.greenAccent.withOpacity(0.3),
    );
  }
}
