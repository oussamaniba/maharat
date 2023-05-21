import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestProgramsResponse.dart';

class SectionsTestDataResponse {
  int? id;
  String? avatar;
  String? name;
  bool? enabled;
  bool? listDisabled;
  SectionsTestProgramsResponse? program;

  SectionsTestDataResponse({
    this.id,
    this.avatar,
    this.name,
    this.enabled,
    this.listDisabled,
    this.program,
  });

  @override
  String toString() {
    return 'Data(id: $id, avatar: $avatar, name: $name, enabled: $enabled, listDisabled: $listDisabled, program: $program)';
  }

  factory SectionsTestDataResponse.fromJson(Map<String, dynamic> json) =>
      SectionsTestDataResponse(
        id: json['id'] as int?,
        avatar: json['avatar'] as String?,
        name: json['name'] as String?,
        enabled: json['enabled'] as bool?,
        listDisabled: json['listDisabled'] as bool?,
        program: SectionsTestProgramsResponse.fromJson(json['program'] as Map<String, dynamic>? ?? {}),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'avatar': avatar,
        'name': name,
        'enabled': enabled,
        'listDisabled': listDisabled,
        'program': program?.toJson(),
      };

  SectionsTestDataResponse copyWith({
    int? id,
    String? avatar,
    String? name,
    bool? enabled,
    bool? listDisabled,
    SectionsTestProgramsResponse? program,
  }) {
    return SectionsTestDataResponse(
      id: id ?? this.id,
      avatar: avatar ?? this.avatar,
      name: name ?? this.name,
      enabled: enabled ?? this.enabled,
      listDisabled: listDisabled ?? this.listDisabled,
      program: program ?? this.program,
    );
  }
}
