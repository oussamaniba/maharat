import 'package:maharat/core/values/constants.dart';

class Skills {
  final String text;
  final SkillsType type;

  Skills({
    required this.text,
    required this.type,
  });

  static List<Skills> get skills => [
        Skills(text: "تداعي سمعي", type: SkillsType.REMEMBERING),
        Skills(text: "ذاكرة", type: SkillsType.REMEMBERING),
        Skills(text: "السؤال", type: SkillsType.REMEMBERING),
        Skills(text: "استقبال سمعي", type: SkillsType.REMEMBERING),
        Skills(text: "تداعي سمعي", type: SkillsType.REMEMBERING),
        Skills(text: "تمييز الحروف", type: SkillsType.READING),
        Skills(text: "تمييز كلمة", type: SkillsType.READING),
        Skills(text: "اختيار المختلف", type: SkillsType.READING),
        Skills(text: "تمييز صوتى للكلمات", type: SkillsType.READING),
        Skills(text: "تهجى", type: SkillsType.READING),
      ];
}
