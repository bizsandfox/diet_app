import 'package:flutter/foundation.dart';

class CalendarModel extends ChangeNotifier {
  DateTime _dateTime = DateTime.now();

  DateTime get dateTime => _dateTime;

  set dateTime(DateTime dateTime) {
    _dateTime = dateTime;
    notifyListeners();
  }

  void addCalenderMonth(int month) {
    _dateTime = DateTime(_dateTime.year, _dateTime.month + month, _dateTime.day);
    notifyListeners();
  }
}
