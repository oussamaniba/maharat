class SectionsDataResponse {
  int? id;
  String? avatar;
  String? name;
  String? type;
  bool? enabled;
  bool? listDisabled;

  SectionsDataResponse({
    this.id,
    this.avatar,
    this.name,
    this.type,
    this.enabled,
  });

  SectionsDataResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    name = json['name'];
    type = json['type'];
    enabled = json['enabled'];
    listDisabled = json['listDisabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['avatar'] = avatar;
    data['name'] = name;
    data['type'] = type;
    data['enabled'] = enabled;
    data['listDisabled'] = listDisabled;
    return data;
  }
}
