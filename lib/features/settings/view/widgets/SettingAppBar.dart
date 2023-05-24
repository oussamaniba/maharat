import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingAppBar extends StatelessWidget {
  final Function() onBackPress;
  final String title;
  const SettingAppBar({
    super.key,
    required this.onBackPress,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffEDF4F8),
      height: 100,
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
                  /// TODO [ Implement action here, Add some Padding with the extension function ]
                },
                child: SvgPicture.asset("assets/child-icon.svg")),
          ),
          Expanded(
            flex: 10,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Text(
              title,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: onBackPress,
              child: SvgPicture.asset("assets/back.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
