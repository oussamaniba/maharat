enum FileType {
  IMAGE("jpg"),
  SVG("svg"),
  VIDEO("mp4"),
  PDF("pdf"),
  AUDIO("wav"),
  TXT("txt"),
  EXCEL("xslx"),
  HTML("html"),
  OTHER("");

  final String file;

  const FileType(this.file);

  factory FileType.fromVal(String v) {
    return values.firstWhere((FileType e) {
      return e.file.toString() == v;
    }, orElse: () => FileType.OTHER);
  }
}

enum SkillsType {
  REMEMBERING,
  READING,
}
