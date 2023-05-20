import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class RegisterPassword extends StatefulWidget {
  final String placeHolder;
  final Function(String value) onPassword;

  const RegisterPassword({
    required this.placeHolder,
    required this.onPassword,
    super.key,
  });

  @override
  State<RegisterPassword> createState() => _RegisterPasswordState();
}

class _RegisterPasswordState extends State<RegisterPassword> {
  bool isPasswordVisible = false;

  updatePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: updatePasswordVisibility,
            icon: Icon(
              isPasswordVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Colors.grey[300],
            ),
          ),
          Expanded(
            child: TextFormField(
              onChanged: widget.onPassword,
              textDirection: TextDirection.rtl,
              obscureText: !isPasswordVisible,
              obscuringCharacter: "●",
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.placeHolder,
                hintTextDirection: TextDirection.rtl,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
