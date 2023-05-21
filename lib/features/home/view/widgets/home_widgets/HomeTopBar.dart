import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/utils/global_functions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage("lib/core/assets/welcome-backgound.png"),
          fit: BoxFit.fill,
          scale: .4,
        ),
      ),
      alignment: Alignment.bottomRight,
      child: Container(
        width: SizeSpec.of(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.bottomRight,
        child: const Text(
          "أهلا بك في مهارة.. ابدأ\nبتعلم طفلك",
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
