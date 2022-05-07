import 'package:flutter/cupertino.dart';

class Day extends StatelessWidget {
  const Day({Key? key, required this.day}) : super(key: key);

  final int day;

  final _fontSize = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(day.toString(), style: _fontSize));
  }
}
