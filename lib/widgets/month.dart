import 'package:diet_app/calendar.dart';
import 'package:diet_app/widgets/day.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../models/calendar_model.dart';

class Month extends StatelessWidget {
  const Month({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var calendarModel = context.watch<CalendarModel>();
    var _firstDayOfMonth = DateTime(calendarModel.dateTime.year, calendarModel.dateTime.month, 1);

    final _days = Calendar.fromDateTime(_firstDayOfMonth).getDaysOfCalendar();

    return GridView.count(
        crossAxisCount: DateTime.daysPerWeek,
        children: _days
            .map((e) => Day(day: e.day, isActive: e.month == _firstDayOfMonth.month).build(context))
            .toList());
  }
}
