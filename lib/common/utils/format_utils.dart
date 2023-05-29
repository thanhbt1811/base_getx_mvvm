import 'package:intl/intl.dart';

class DateFormatUtils {
  static String formatYYYMMDD(DateTime dateTime) {
    final dateFormat = DateFormat("yyyy/MM/dd");
    return dateFormat.format(dateTime);
  }
}
