import 'package:flutter/material.dart';

class HorizontalListWheelScrollView extends StatelessWidget {
  final Widget Function(BuildContext, int) builder;
  final Axis scrollDirection;
  final FixedExtentScrollController controller;
  final int itemCount;
  final double itemExtent;
  final double diameterRatio;
  final void Function(int) onSelectedItemChanged;
  const HorizontalListWheelScrollView({
    Key? key,
    required this.builder,
    required this.itemCount,
    required this.itemExtent,
    required this.controller,
    required this.onSelectedItemChanged,
    this.scrollDirection = Axis.horizontal,
    this.diameterRatio = 100000,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: scrollDirection == Axis.horizontal ? 3 : 0,
      child: ListWheelScrollView.useDelegate(
        onSelectedItemChanged: onSelectedItemChanged,
        controller: controller,
        itemExtent: itemExtent,
        diameterRatio: diameterRatio,
        physics: const FixedExtentScrollPhysics(),
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: itemCount,
          builder: (context, index) {
            return RotatedBox(
              quarterTurns: scrollDirection == Axis.horizontal ? 1 : 0,
              child: builder(context, index),
            );
          },
        ),
      ),
    );
  }
}
