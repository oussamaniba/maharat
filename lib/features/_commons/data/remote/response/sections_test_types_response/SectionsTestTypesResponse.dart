import 'SectionsTestTypesDataResponse.dart';

class SectionsTestTypesResponse {
  bool? status;
  String? message;
  List<SectionsTestTypesDataResponse>? data;

  SectionsTestTypesResponse({this.status, this.message, this.data});

  factory SectionsTestTypesResponse.fromJson(Map<String, dynamic> json) {
    return SectionsTestTypesResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)?.map((e) {
        return SectionsTestTypesDataResponse.fromJson(e);
      }).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.map((e) => e.toJson()).toList(),
      };

  SectionsTestTypesResponse copyWith({
    bool? status,
    String? message,
    List<SectionsTestTypesDataResponse>? data,
  }) {
    return SectionsTestTypesResponse(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

}
