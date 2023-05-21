import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestChooseImage.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestSounds.dart';

class SectionsTestProgramsResponse {
  dynamic images;
  SectionsTestSounds? sounds;

  SectionsTestProgramsResponse({this.images, this.sounds});

  factory SectionsTestProgramsResponse.fromJson(Map<String, dynamic> json) => SectionsTestProgramsResponse(
        images: switch (json['images'].runtimeType == List<dynamic>) {
          false => SectionTestChooseImage.fromJson(json['images'] as Map<String, dynamic>).toJson().values.toList(),
          true => json['images'] as List<dynamic>? ?? [], //Default value
        },
        sounds: SectionsTestSounds.fromJson(json['sounds'] as Map<String, dynamic>? ?? {}),
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
