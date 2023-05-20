import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/core/routes/app_route.dart';

extension PageRouteInfo<T> on PageInfo<T> {
  Future toPage(int index) async {
    getIt<AppRoutes>().innerRouterOf<TabsRouter>(name)?.setActiveIndex(index);
  }

  Future<int> previous() async {
    int? previous =
        getIt<AppRoutes>().innerRouterOf<TabsRouter>(name)?.previousIndex;
    getIt<AppRoutes>()
        .innerRouterOf<TabsRouter>(name)
        ?.setActiveIndex(previous ?? 0);
    return previous ?? 0;
  }
}

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

  Widget withPadding(
      [EdgeInsets padding =
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10)]) {
    return Padding(
      padding: padding,
      child: this,
    );
  }

  Widget toScrollable({
    direction = Axis.vertical,
    padding = EdgeInsets.zero,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: padding,
        child: SingleChildScrollView(
          scrollDirection: direction,
          child: this,
        ),
      ),
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

  Widget toPosition({
    double top = 0,
    double left = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
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
