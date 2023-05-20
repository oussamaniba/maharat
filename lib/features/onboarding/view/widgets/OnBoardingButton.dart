import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class OnBoardingButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? color;
  final Function() onTap;

  const OnBoardingButton({
    required this.text,
    required this.onTap,
    this.textColor,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: SizeSpec.of(context).width,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20)
          .copyWith(top: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: color ?? Colors.blue[100],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(40),
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Center(
              child: Text(
                text,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
