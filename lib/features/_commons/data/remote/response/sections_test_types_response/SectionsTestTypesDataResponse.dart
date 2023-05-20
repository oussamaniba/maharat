class SectionsTestTypesDataResponse {
  int? id;
  String? name;
  String? type;

  SectionsTestTypesDataResponse({
    this.id,
    this.name,
    this.type,
  });

  factory SectionsTestTypesDataResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      SectionsTestTypesDataResponse(
        id: json['id'] as int?,
        name: json['name'] as String?,
        type: json['type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
      };

  SectionsTestTypesDataResponse copyWith({
    int? id,
    String? name,
    String? type,
  }) {
    return SectionsTestTypesDataResponse(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}
