DateTime? datetimeFromJson(String? value) {
  return value != null ? DateTime.tryParse(value) : null;
}

String? datetimeToJson(DateTime? date) {
  return date?.toIso8601String();
}

String? toYYYYMMdd(DateTime? date) {
  return date?.toIso8601String().split("T").first;
}

String formatDateTimeToHomeScreen(String stringDate) {
  String year = stringDate.substring(0, 4);
  String month = stringDate.substring(5, 7);
  String day = stringDate.substring(8, 10);
  String hour = stringDate.substring(11, 16);

  return "$day/$month/$year às $hour";
}
