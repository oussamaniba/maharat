import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestSounds.dart';

class SectionsTestProgramsResponse {
  List<dynamic>? images;
  SectionsTestSounds? sounds;

  SectionsTestProgramsResponse({this.images, this.sounds});

  @override
  String toString() => 'Program(images: $images, sounds: $sounds)';

  factory SectionsTestProgramsResponse.fromJson(Map<String, dynamic> json) =>
      SectionsTestProgramsResponse(
        images: json['images'] as List<dynamic>? ?? [],
        sounds: json['sounds'] == null
            ? null
            : SectionsTestSounds.fromJson(
                json['sounds'] as Map<String, dynamic>? ?? {},
              ),
      );

  Map<String, dynamic> toJson() => {
        'images': images,
        'sounds': sounds?.toJson(),
      };

  SectionsTestProgramsResponse copyWith({
    List<String>? images,
    SectionsTestSounds? sounds,
  }) {
    return SectionsTestProgramsResponse(
      images: images ?? this.images,
      sounds: sounds ?? this.sounds,
    );
  }
}
