class Calendar {
  final int year;
  final int month;
  final int day;

  Calendar(this.year, this.month, this.day);

  Calendar.fromDateTime(DateTime dateTime)
      : year = dateTime.year,
        month = dateTime.month,
        day = dateTime.day;

  int getLastDayOfMonth() {
    var _datetime = DateTime(year, month + 1, 1);
    return _datetime.subtract(const Duration(days: 1)).day;
  }

  List<DateTime> getDaysOfCalendar() {
    const calendarSize = 35;

    var firstDayOfMonth = DateTime(year, month, 1);
    var firstDayOfCalendar = DateTime(year, month, 1)
        .subtract(Duration(days: firstDayOfMonth.weekday == 7 ? 0 : firstDayOfMonth.weekday));

    var daysOfMonth = List<DateTime>.generate(
        calendarSize, (index) => firstDayOfCalendar.add(Duration(days: index)));

    return daysOfMonth;
  }
}
