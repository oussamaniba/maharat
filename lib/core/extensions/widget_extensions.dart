import 'package:flutter/material.dart';

extension Widgets on Widget {
  Widget toExpanded([int flex = 0]) {
    if (flex > 0) {
      return Expanded(
        flex: flex,
        child: this,
      );
    }
    return Expanded(child: this);
  }

  Widget withPadding([EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 10)]) {
    return Padding(
      padding: padding,
      child: this,
    );
  }

  Widget toScrollable([direction = Axis.vertical]) {
    return SingleChildScrollView(
      scrollDirection: direction,
      child: this,
    );
  }

  Widget clickable({
    Function()? onTap,
    BorderRadius radius = BorderRadius.zero,
    Color? splashColor,
    Color? hoverColor,
  }) {
    return InkWell(
      onTap: onTap,
      splashColor: splashColor ?? Colors.grey[600],
      hoverColor: hoverColor ?? Colors.grey[200],
      borderRadius: radius,
      child: this,
    ).wrapWithMaterial(radius);
  }

  Widget wrapWithMaterial([BorderRadius radius = BorderRadius.zero]) {
    return Material(
      color: Colors.transparent,
      borderRadius: radius,
      child: this,
    );
  }
}

extension WidgetsList on List<Widget> {
  Widget toRow({
    MainAxisAlignment alignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxis = CrossAxisAlignment.center,
  }) {
    return Row(
      mainAxisAlignment: alignment,
      crossAxisAlignment: crossAxis,
      children: this,
    );
  }

  Widget toColumn({
    MainAxisAlignment alignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxis = CrossAxisAlignment.center,
  }) {
    return Column(
      mainAxisAlignment: alignment,
      crossAxisAlignment: crossAxis,
      mainAxisSize: MainAxisSize.max,
      children: this,
    );
  }
}
