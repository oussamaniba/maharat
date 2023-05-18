class ProgramsDataResponse {
  int? id;
  String? avatar;
  String? name;
  String? type;
  bool? enabled;

  ProgramsDataResponse({
    this.id,
    this.avatar,
    this.name,
    this.type,
    this.enabled,
  });

  ProgramsDataResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    name = json['name'];
    type = json['type'];
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['avatar'] = avatar;
    data['name'] = name;
    data['type'] = type;
    data['enabled'] = enabled;
    return data;
  }
}
