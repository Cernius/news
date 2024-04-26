import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toFormattedDate() {
    return DateFormat('yyyy-MMMM-dd HH:mm').format(this);
  }
}
