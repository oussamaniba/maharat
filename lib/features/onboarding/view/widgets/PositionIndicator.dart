import 'package:flutter/material.dart';

class PositionIndocator extends StatelessWidget {
  final int size;
  final int position;

  const PositionIndocator({
    required this.size,
    required this.position,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(size, (index) {
        bool isSelected = index == position;
        return AnimatedContainer(
          width: isSelected ? 50 : 30,
          height: 4,
          margin: const EdgeInsets.only(right: 10),
          duration: const Duration(
            milliseconds: 200,
          ),
          decoration: BoxDecoration(
            color: isSelected ? Colors.red[100] : Colors.blue[200],
            borderRadius: BorderRadius.circular(2),
          ),
        );
      }),
    );
  }
}
