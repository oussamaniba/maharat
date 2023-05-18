import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/utils/global_functions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeSpec.of(context).height * .5,
      decoration: const BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage("lib/core/assets/welcome-backgound.png"),
          fit: BoxFit.fill,
          scale: .4,
        ),
      ),
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(height: 20),
          SafeArea(
            child: SizedBox(
              height: 60.0,
              width: SizeSpec.of(context).width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      logEvent("TAP");
                    },
                    icon: const Icon(Icons.more_vert_outlined),
                    color: Colors.orange,
                  ),
                  Image.asset(
                    "lib/core/assets/logo.jpeg",
                    height: 50,
                    width: 70,
                  ).withPadding(const EdgeInsets.only(right: 20))
                ],
              ),
            ).withPadding(const EdgeInsets.symmetric(horizontal: 20)),
          ),
          Expanded(
            child: Container(
              width: SizeSpec.of(context).width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerRight,
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
          )
        ],
      ),
    );
  }
}
