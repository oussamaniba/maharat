import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class DetailsAppBar extends StatelessWidget {
  final String title;
  final Function() onBack;

  const DetailsAppBar({
    required this.title,
    required this.onBack,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeSpec.of(context).width,
      height: 100.0,
      color: const Color(0x9BC9D7DD),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 25),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container()),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: onBack,
                  icon: SvgPicture.asset(
                    "lib/core/assets/back.svg",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
