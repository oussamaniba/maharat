class SectionTestChooseImage {
  String? right;
  String? wrong1;
  String? wrong2;

  SectionTestChooseImage({this.right, this.wrong1, this.wrong2});

  factory SectionTestChooseImage.fromJson(Map<String, dynamic> json) {
    return SectionTestChooseImage(
      right: json['right'] as String?,
      wrong1: json['wrong1'] as String?,
      wrong2: json['wrong2'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'right': right,
        'wrong1': wrong1,
        'wrong2': wrong2,
      };



  List<String> get images => toJson().entries.map((value) => value.value as String).toList();
}
