import 'package:flutter/material.dart';

class Day extends StatelessWidget {
  const Day({Key? key, required this.day, this.isActive = false}) : super(key: key);

  final int day;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    var _fontSize = TextStyle(fontSize: 18, color: isActive ? (Colors.black) : Colors.grey);

    return Center(child: Text(day.toString(), style: _fontSize));
  }
}
