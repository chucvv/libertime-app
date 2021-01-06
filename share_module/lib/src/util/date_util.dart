import 'package:intl/intl.dart';

String todayDate() {
  final now = DateTime.now();
  final dateFormat = DateFormat('HH:mm:ss dd-MM-yyyy');
  return dateFormat.format(now);
}
