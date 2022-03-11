import 'package:intl/intl.dart';

extension DateExtensions on DateTime {
  String formatToPattern(String pattern) {
    final DateFormat formatter = DateFormat(pattern);
    return formatter.format(this);
  }
}
