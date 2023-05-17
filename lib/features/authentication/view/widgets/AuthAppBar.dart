import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class AuthAppBar extends StatelessWidget {
  final String title;
  final Function() onBackPerss;

  const AuthAppBar({
    required this.title,
    required this.onBackPerss,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeSpec.of(context).height * .10,
      child: Row(
        children: [
          const SizedBox(width: 70),
          Expanded(
            child: Text(
              title,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            width: 70,
            child: InkWell(
              onTap: onBackPerss,
              child: SvgPicture.asset("lib/core/assets/back.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
