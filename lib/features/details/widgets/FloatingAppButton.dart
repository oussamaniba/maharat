import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';

class FloatingAppButton extends StatelessWidget {
  final String left;
  final Function() onLeft;

  final String? right;
  final Function()? onRight;

  const FloatingAppButton({
    required this.left,
    required this.onLeft,
    this.right,
    this.onRight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Row(
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFfba29c),
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Ionicons.arrow_back_outline,
                  color: Colors.white,
                ),
                const SizedBox(width: 30),
                Text(
                  left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: 30),
              ],
            ),
          ).clickable(
            onTap: onLeft,
            radius: BorderRadius.circular(40),
            splashColor: Colors.grey[200],
          ),
          if (right != null) ...[
            const SizedBox(width: 30),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFfba29c),
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 30),
                  Text(
                    right!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Icon(
                    Ionicons.arrow_forward_outline,
                    color: Colors.white,
                  ),
                ],
              ),
            ).clickable(
              onTap: onRight,
              radius: BorderRadius.circular(40),
              splashColor: Colors.grey[200],
            ),
          ],
        ],
      ),
    );
  }
}
