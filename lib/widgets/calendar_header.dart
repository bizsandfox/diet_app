import 'package:flutter/cupertino.dart';

class CalendarHeader extends StatelessWidget {
  const CalendarHeader({Key? key, required this.year, required this.month}) : super(key: key);

  CalendarHeader.fromDateTime({Key? key, required DateTime dateTime})
      : year = dateTime.year,
        month = dateTime.month,
        super(key: key);

  final int year;
  final int month;

  final TextStyle _textStyle = const TextStyle(fontSize: 22);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Text(
            '$year 년 $month 월',
            style: _textStyle,
          ),
        )
      ],
    );
  }
}
