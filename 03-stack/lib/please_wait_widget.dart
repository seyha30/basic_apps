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
      color: Colors.grey.withOpacity(0.2),
    );
  }
}
