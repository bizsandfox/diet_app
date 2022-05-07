import 'package:diet_app/calendar.dart';
import 'package:diet_app/widgets/day.dart';
import 'package:flutter/cupertino.dart';

class Month extends StatelessWidget {
  const Month({Key? key, required this.year, required this.month}) : super(key: key);

  final int year;
  final int month;

  @override
  Widget build(BuildContext context) {
    var _firstDayOfMonth = DateTime(year, month, 1);

    final _days = List<int>.generate(Calendar.getLastDayOfMonth(_firstDayOfMonth),
        (index) => _firstDayOfMonth.add(Duration(days: index)).day);

    return GridView.count(
        crossAxisCount: DateTime.daysPerWeek, children: _days.map((e) => Day(day: e).build(context)).toList());
  }
}