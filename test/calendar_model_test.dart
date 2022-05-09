import 'package:diet_app/models/calendar_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('add month', () {
    final calendarModel = CalendarModel();
    final statingDateTime = calendarModel.dateTime;
    calendarModel.addListener(() {
      expect(calendarModel.dateTime.compareTo(statingDateTime), greaterThan(0));
    });

    calendarModel.addCalenderMonth(1);
  });
}