import 'package:open_fashion/utils/extension/extension.dart';

extension DateTimeEx on DateTime {
  String format([String fmt = 'dd/MM/yyyy, h:mm:ss a']) {
    try {
      return fmt.dateFmt().format(this);
    } catch (_) {
      return '';
    }
  }

  String ymdFmt() => format('yyyy.MM.dd');

  String ymdBEFmt() => format('yyyy/MM/dd');

  String ymdeFmt() => format('yyyy.MM.dd (E)');

  String ymdEFmt() => format('yyyy.MM.dd(E)');

  String ymdehmFmt() => format('yyyy.MM.dd (E) HH:mm');

  String ymdEhmFmt() => format('yyyy.MM.dd(E) HH:mm');

  String ymdhmFmt() => format('yyyy.MM.dd HH:mm');

  String mdeFmt() => format('M월 d일 (E)');

  String ahmFmt() => format('a h:mm');

  String dateTimeFmt() => format('dd/MM/yyyy h:mm:ss');

  String yyyymFmt() => format('yyyy년 M월');

  String myFmt() => format('MM/yyyy');

  String hmFmt() => format('HH:MM');

  DateTime monday([int wk = 1]) {
    return DateTime(year, month, day - (weekday - wk) % 7 + (weekday == DateTime.monday ? -7 : 0));
  }

  bool isEqualDate(DateTime d) => d.year == year && d.month == month && d.day == day;

  int toTimestamp() => this.millisecondsSinceEpoch;
}

int get millisecondsSinceEpoch => DateTime.now().toUtc().millisecondsSinceEpoch;
