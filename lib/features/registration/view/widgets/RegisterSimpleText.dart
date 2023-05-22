import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class RegisterSimpleText extends StatefulWidget {
  final String placeHolder;
  final Function(String value) onText;

  const RegisterSimpleText({
    required this.placeHolder,
    required this.onText,
    super.key,
  });

  @override
  State<RegisterSimpleText> createState() => _RegisterSimpleTextState();
}

class _RegisterSimpleTextState extends State<RegisterSimpleText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeSpec.of(context).width,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: Colors.grey,
          width: .2,
        ),
      ),
      child: TextFormField(
        onChanged: widget.onText,
        textDirection: TextDirection.rtl,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.placeHolder,
          hintTextDirection: TextDirection.rtl,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
