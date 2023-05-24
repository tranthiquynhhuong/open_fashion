import 'package:flutter/material.dart';
import 'package:open_fashion/utils/extension/extension.dart';

extension IntEx on int {
  Duration milliseconds() => Duration(milliseconds: this);
  Duration seconds() => Duration(seconds: this);
  Duration minutes() => Duration(minutes: this);
  Duration days() => Duration(days: this);
  BorderRadius borderRadius() => BorderRadius.circular(toDouble());
  Radius radius() => Radius.circular(toDouble());
  String padLeft(int width, [String land = '0']) => toString().padLeft(width, land);
  String padRight(int width, [String land = '0']) => toString().padRight(width, land);

  DateTime dateTime() => DateTime.fromMillisecondsSinceEpoch(this * 1000);
  DateTime dateTimeFromMiliseconds() => DateTime.fromMillisecondsSinceEpoch(this);
  DateTime dateTimeFromUTC() => DateTime.fromMillisecondsSinceEpoch(this, isUtc: true);
  String dateTimeFmt() => dateTime().dateTimeFmt();

  String timeFormat() => '${(this ~/ 60).padLeft(2)}:${(this % 60).padLeft(2)}';

  int toKm() => this ~/ 1000;

  String toTimeStr() {
    int t = this;
    final h = t ~/ 3600;
    t = t % 3600;
    final m = t ~/ 60;
    final s = t % 60;
    return '${h.toString().padLeft(2, '0')}'
        ':${m.toString().padLeft(2, '0')}'
        ':${s.toString().padLeft(2, '0')}';
  }

  String toTimeShortStr() {
    final t = this;
    final m = t ~/ 60;
    final s = t % 60;
    return '${m.toString().padLeft(2, '0')}'
        ':${s.toString().padLeft(2, '0')}';
  }

  int roundPlayedTime() {
    int percentage = this;
    percentage = percentage.clamp(0, 100);
    if (percentage >= 1 && percentage < 5) {
      return 1;
    }
    return percentage ~/ 5 * 5;
  }

  int toTimestamp() => this ~/ 1000;
}
