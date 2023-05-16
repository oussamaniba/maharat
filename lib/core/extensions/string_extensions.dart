extension CustomStringExtension on String {
  bool isEqual(String value) {
    return this == value;
  }

  bool containsPath(String value) {
    var splited = split("/")[1];
    if (value.isNotEmpty) {
      var valueSplit = value.split("/")[0];
      return splited.isEqual(valueSplit);
    }
    return true;
  }

  String toCapitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');

  bool get emailValid => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this);
}
