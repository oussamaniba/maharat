class ExceptionMessageHandler<T> {
  final String _message;
  T? _data;

  ExceptionMessageHandler(this._message, [_data]);

  String get message => _message;

  T? get data => _data;

  @override
  String toString() {
    return "Error $message ---- $data";
  }
}
