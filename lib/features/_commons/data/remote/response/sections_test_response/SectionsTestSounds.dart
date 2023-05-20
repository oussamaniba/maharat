class SectionsTestSounds {
  String? mainSound;

  SectionsTestSounds({this.mainSound});

  @override
  String toString() => 'Sounds(mainSound: $mainSound)';

  factory SectionsTestSounds.fromJson(Map<String, dynamic> json) =>
      SectionsTestSounds(
        mainSound: json['mainSound'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'mainSound': mainSound,
      };

  SectionsTestSounds copyWith({
    String? mainSound,
  }) {
    return SectionsTestSounds(
      mainSound: mainSound ?? this.mainSound,
    );
  }
}
