import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommonAppBar extends StatelessWidget {
  final Function() onBackPress;
  const CommonAppBar({
    super.key,
    required this.onBackPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffEDF4F8),
      height: 130,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {
                /// logEvent("TAP");
              },
              icon: const Icon(Icons.more_vert_outlined),
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
                onTap: () {
                  /// TODO [
                  /// 1 - Implement action here
                  /// 2 - Add some Padding with the extension function
                  /// ]
                },
                child: SvgPicture.asset("assets/child-icon.svg")),
          ),
          Expanded(
            flex: 10,
            child: Image.asset("assets/logo.jpeg"),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
                onTap: onBackPress, child: SvgPicture.asset("assets/back.svg")),
          ),
        ],
      ),
    );
  }
}
