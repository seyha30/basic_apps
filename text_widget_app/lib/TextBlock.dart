import 'package:flutter/cupertino.dart';

class TextBlock {
  final Color _color;
  final String _text;
  TextBlock(this._color,this._text);
  String get text => _text;
  Color get color => _color;
}