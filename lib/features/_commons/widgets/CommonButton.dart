import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final bool isUnderline;
  final double paddingH;
  final double paddingV;
  final Color? textColor;
  final Color? color;
  final IconData? icon;
  final Function() onTap;

  const CommonButton({
    required this.text,
    required this.onTap,
    this.fontSize = 20.0,
    this.paddingH = 40,
    this.paddingV = 20,
    this.isUnderline = false,
    this.icon,
    this.textColor,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: SizeSpec.of(context).width,
      margin: EdgeInsets.symmetric(
        horizontal: paddingH,
        vertical: paddingV,
      ).copyWith(top: 0),
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
            child: Row(
              mainAxisAlignment: icon == null ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
              children: [
                if (icon != null) ...[
                  Icon(
                    icon,
                    color: textColor ?? Colors.black,
                  )
                ],
                Text(
                  text,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: textColor ?? Colors.black,
                    fontSize: fontSize,
                    decorationColor: textColor ?? Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
                    decorationThickness: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
