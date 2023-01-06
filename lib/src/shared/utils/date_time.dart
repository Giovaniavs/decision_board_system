DateTime? datetimeFromJson(String? value) {
  return value != null ? DateTime.tryParse(value) : null;
}

String? datetimeToJson(DateTime? date) {
  return date?.toIso8601String();
}

String? toYYYYMMdd(DateTime? date) {
  return date?.toIso8601String().split("T").first;
}
