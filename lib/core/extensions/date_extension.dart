extension DateExtension on DateTime {
  String differenceInDate(DateTime? endDate) {
    // Calculate the difference in years and months
    var end = endDate ??= DateTime.now();
    int diffYears = end.year - year;
    int diffMonths = end.month - month;

    // Adjust for negative months
    if (diffMonths < 0) {
      diffYears--;
      diffMonths += 12;
    }

    // Calculate the difference in months only
    int diffTotalMonths = (end.year - year) * 12 + (end.month - month);

    if (diffYears == 0) return '$diffTotalMonths month(s)';

    return '$diffYears year(s) $diffMonths month(s)';
  }
}
