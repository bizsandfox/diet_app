class Calendar {
  int getLastDayOfMonth(DateTime dateTime) {
    var _datetime =  DateTime(dateTime.year, dateTime.month + 1, 1);
    return _datetime.subtract(const Duration(days: 1)).day;
  }
}