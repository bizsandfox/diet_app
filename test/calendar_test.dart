import 'package:diet_app/calendar.dart';
import 'package:test/test.dart';

void main() {
  group('lastDayOfMonth', () {
    test('the last day of of month is 28', () {
      expect(28, Calendar.getLastDayOfMonth(DateTime.parse('2022-02-01')));
    });

    test('the last day of month is 30', () {
      expect(30, Calendar.getLastDayOfMonth(DateTime.parse('2022-04-01')));
    });

    test('the last day of month is 31', () {
      expect(31, Calendar.getLastDayOfMonth(DateTime.parse('2022-05-01')));
    });

    test('In a leap year, the last day of February is the 29', () {
      expect(29, Calendar.getLastDayOfMonth(DateTime.parse('2020-02-01')));
    });
  });
}
