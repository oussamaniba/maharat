import 'package:maharat/features/_commons/data/remote/response/ProgramsDataResponse.dart';

class Groups {
  bool? status;
  String? message;
  List<ProgramsDataResponse>? data;

  Groups({this.status, this.message, this.data});

  Groups.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ProgramsDataResponse>[];
      json['data'].forEach((v) {
        data!.add(ProgramsDataResponse.fromJson(v));
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
