import 'SectionsTestDataResponse.dart';

class SectionsTestResponse {
  bool? status;
  String? type;
  String? message;
  SectionsTestDataResponse? data;

  SectionsTestResponse({this.status, this.type, this.message, this.data});

  @override
  String toString() {
    return 'SectionsTestResponse(status: $status, type: $type, message: $message, data: $data)';
  }

  factory SectionsTestResponse.fromJson(Map<String, dynamic> json) {
    return SectionsTestResponse(
      status: json['status'] as bool?,
      type: json['type'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SectionsTestDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'type': type,
        'message': message,
        'data': data?.toJson(),
      };

  SectionsTestResponse copyWith({
    bool? status,
    String? type,
    String? message,
    SectionsTestDataResponse? data,
  }) {
    return SectionsTestResponse(
      status: status ?? this.status,
      type: type ?? this.type,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}
