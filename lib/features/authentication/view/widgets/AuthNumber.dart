import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class AuthNumber extends StatefulWidget {
  final String placeHolder;
  final Function(String value) onText;

  const AuthNumber({
    required this.placeHolder,
    required this.onText,
    super.key,
  });

  @override
  State<AuthNumber> createState() => _AuthNumberState();
}

class _AuthNumberState extends State<AuthNumber> {
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
          TextButton(
            onPressed: () {},
            child: Text(
              "+20",
              style: TextStyle(
                color: Colors.red[300],
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              onChanged: widget.onText,
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
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
