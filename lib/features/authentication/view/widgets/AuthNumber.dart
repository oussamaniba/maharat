import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class AuthEmail extends StatefulWidget {
  final String placeHolder;
  final Function(String value) onText;

  const AuthEmail({
    required this.placeHolder,
    required this.onText,
    super.key,
  });

  @override
  State<AuthEmail> createState() => _AuthEmailState();
}

class _AuthEmailState extends State<AuthEmail> {
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
        maxLength: 9,
        textDirection: TextDirection.rtl,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.placeHolder,
          hintTextDirection: TextDirection.rtl,
          counterStyle: const TextStyle(
            height: double.minPositive,
          ),
          counterText: "",
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
