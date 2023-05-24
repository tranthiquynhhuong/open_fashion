import 'package:open_fashion/utils/utils.dart';

bool isWeekend(DateTime day, {List<int> weekendDays = const [DateTime.saturday, DateTime.sunday]}) {
  return weekendDays.contains(day.weekday);
}

int calculateWeekNumber(DateTime date) {
  final middleDay = date.add(3.days());
  final vDayOfYear = dayOfYear(middleDay);

  return 1 + ((vDayOfYear - 1) / 7).floor();
}

int dayOfYear(DateTime date) {
  return normalizeDate(date).difference(DateTime.utc(date.year, 1, 1)).inDays + 1;
}

DateTime firstDayOfMonth(DateTime month) {
  return DateTime.utc(month.year, month.month, 1);
}

DateTime lastDayOfMonth(DateTime month) {
  final date =
      month.month < 12 ? DateTime.utc(month.year, month.month + 1, 1) : DateTime.utc(month.year + 1, 1, 1);
  return date.subtract(1.days());
}

bool isBeforeMonth(DateTime day, DateTime month) {
  if (day.year == month.year) {
    return day.month < month.month;
  } else {
    return day.isBefore(month);
  }
}

bool isAfterMonth(DateTime day, DateTime month) {
  if (day.year == month.year) {
    return day.month > month.month;
  } else {
    return day.isAfter(month);
  }
}

/// Returns a numerical value associated with given `weekday`.
///
/// Returns 1 for `StartingDayOfWeek.monday`, all the way to 7 for `StartingDayOfWeek.sunday`.
// int getWeekdayNumber(StartingDayOfWeek weekday) {
//   return StartingDayOfWeek.values.indexOf(weekday) + 1;
// }

/// Returns `date` in UTC format, without its time part.
DateTime normalizeDate(DateTime date) {
  return DateTime.utc(date.year, date.month, date.day);
}

/// Checks if two DateTime objects are the same day.
/// Returns `false` if either of them is null.
bool isSameDay(DateTime? a, DateTime? b) {
  if (a == null || b == null) {
    return false;
  }

  return a.year == b.year && a.month == b.month && a.day == b.day;
}

bool isWithinRange(DateTime day, DateTime start, DateTime end) {
  if (isSameDay(day, start) || isSameDay(day, end)) {
    return true;
  }

  if (day.isAfter(start) && day.isBefore(end)) {
    return true;
  }

  return false;
}

List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

int getMonthCount(DateTime first, DateTime last) {
  final yearDif = last.year - first.year;
  final monthDif = last.month - first.month;

  return yearDif * 12 + monthDif;
}
