import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringEx on String {
  DateFormat dateFmt() => DateFormat(this);

  DateTime? dateTime([String inFormat = 'yyyy-MM-ddTHH:mm:ss.Z']) {
    if (isEmpty) {
      return null;
    }
    try {
      return inFormat.dateFmt().parse(this, true);
    } catch (_) {
      return null;
    }
  }

  DateTime? dateTimeIso8601Parse() {
    if (isEmpty) {
      return null;
    }
    try {
      return DateTime.parse(this);
    } catch (_) {
      return null;
    }
  }

  DateTime? dateTimeIso8601LocalParse() {
    if (isEmpty) {
      return null;
    }
    try {
      final dt = DateTime.parse(this);
      return dt.toLocal();
    } catch (_) {
      return null;
    }
  }

  DateTime? dateTimeParse() => dateTime('yyyy-MM-dd HH:mm:ss');

  String toPhone() => replaceAllMapped(RegExp(r'(\d{3})(\d{4})(\d+)'), (m) => '${m[1]}-${m[2]}-${m[3]}');

  int toInt() => int.tryParse(this) ?? 0;
  double toDouble() => double.tryParse(this) ?? 0;

  String safe(String placeholder) {
    if (isEmpty) {
      return placeholder;
    }
    return this;
  }

  String capitalize() {
    if (length >= 1) {
      return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
    }
    return this;
  }

  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  Color toColor() {
    final buffer = StringBuffer();
    if (length == 6 || length == 7) {
      buffer.write('ff');
    }
    buffer.write(replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String hide() {
    if (isEmpty) {
      return '';
    }
    final f = substring(0, 1);
    final ls = List.generate(length - 1, (index) => '*');
    return f + ls.join('');
  }
}
