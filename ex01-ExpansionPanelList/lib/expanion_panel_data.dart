import 'package:flutter/material.dart';

class ExpansionPanelData {
  String _title;
  String _body;
  bool _expanded;

  ExpansionPanelData(this._title, this._body, this._expanded);
  // accessor
  String get title => _title;
  String get body => _body;
  bool get expanded => _expanded;
  set expanded(bool value) {
    _expanded = value;
  }

  @override
  String toString() {
    return 'ExpansionPanelData{_title: $_title, _body: $_body, _expanded: $_expanded}';
  }
}
