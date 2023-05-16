import 'package:flutter/material.dart';

class SizeSpec {
  BuildContext context;
  SizeSpec.of(this.context);

  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;

  bool get isMobile => width < 650;
  bool get isTablet => width < 1350 && width >= 650;
  bool get isSmallTablet => width < 800 && width >= 650;
}
