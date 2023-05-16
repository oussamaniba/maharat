import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class Sizes {
  static const appBarDesktopSize = 150.0;
  static const appBarTabletSize = 80.0;
  static const appBarMobileSize = 60.0;

  static const bodyDesktopPadding_H = 40.0;
  static const bodyDesktopPadding_W = 120.0;
  static const bodyTabletPadding_H = 30.0;
  static const bodyTabletPadding_W = 40.0;
  static const bodyMobilePadding_H = 15.0;
  static const bodyMobilePadding_W = 20.0;

  BuildContext context;
  Sizes.of(this.context);

  double get appBarSize {
    var size = SizeSpec.of(context);
    if (size.isMobile) {
      return appBarMobileSize;
    }
    if (size.isTablet || size.isSmallTablet) {
      return appBarTabletSize;
    }
    return appBarDesktopSize;
  }
}
