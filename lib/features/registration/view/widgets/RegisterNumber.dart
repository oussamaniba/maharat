import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class RegisterNumber extends StatefulWidget {
  final String placeHolder;
  final Function(String value) onText;

  const RegisterNumber({
    required this.placeHolder,
    required this.onText,
    super.key,
  });

  @override
  State<RegisterNumber> createState() => _RegisterNumberState();
}

class _RegisterNumberState extends State<RegisterNumber> {
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
        onChanged: (v) => widget.onText(v),
        textDirection: TextDirection.rtl,
        maxLength: 9,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          counterStyle: const TextStyle(height: double.minPositive),
          counterText: "",
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
