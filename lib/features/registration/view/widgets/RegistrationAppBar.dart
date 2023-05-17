import 'package:conditioned/conditioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/features/registration/models/RegistrationAppBarItem.dart';

class RegistrationAppBar extends StatelessWidget {
  final String title;
  final RegistrationAppBarItem item;
  final Function() onBackPerss;

  const RegistrationAppBar({
    required this.title,
    required this.item,
    required this.onBackPerss,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Conditioned.boolean(
            item.image.endsWith(".svg"),
            trueBuilder: () => SvgPicture.asset(
              item.image,
            ),
            falseBuilder: () => Image.asset(
              item.image,
              height: 100,
              width: 200,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onBackPerss,
                  child: SvgPicture.asset(
                    "lib/core/assets/back.svg",
                    width: 80,
                    height: 80,
                    alignment: Alignment.centerRight,
                  ),
                ),
                Text(
                  title,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ).withPadding(const EdgeInsets.only(right: 20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
