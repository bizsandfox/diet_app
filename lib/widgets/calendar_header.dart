import 'package:diet_app/widgets/prev_month_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../models/calendar_model.dart';
import 'next_month_button.dart';

class CalendarHeader extends StatelessWidget {
  const CalendarHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var calendarModel = context.watch<CalendarModel>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(18),
          child: PrevMonthButton(handlePress: () {
            calendarModel.addCalenderMonth(-1);
          }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Consumer<CalendarModel>(
            builder: (_, calendarModel, child) => Text(
              '${calendarModel.dateTime.year}년 ${calendarModel.dateTime.month}월',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18),
          child: NextMonthButton(handlePress: () {
            calendarModel.addCalenderMonth(1);
          }),
        ),
      ],
    );
  }
}
