import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart';

class SectionsResponse {
  bool? status;
  String? message;
  List<SectionsDataResponse>? data;

  SectionsResponse({this.status, this.message, this.data});

  SectionsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <SectionsDataResponse>[];
      json['data'].forEach((v) {
        data!.add(SectionsDataResponse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
