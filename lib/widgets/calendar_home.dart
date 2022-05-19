import 'package:diet_app/widgets/month_header.dart';
import 'package:flutter/material.dart';

import 'calendar_header.dart';
import 'month.dart';

class CalendarHome extends StatefulWidget {
  const CalendarHome({Key? key}) : super(key: key);

  @override
  State<CalendarHome> createState() => _CalendarHomeState();
}

class _CalendarHomeState extends State<CalendarHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Diet Calendar"),
        ),
        body: Column(
          children: const [
            CalendarHeader(),
            MonthHeader(),
            Expanded(
              child: Month(),
            )
          ],
        ));
  }
}
