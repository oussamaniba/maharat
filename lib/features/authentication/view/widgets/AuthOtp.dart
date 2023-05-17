import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class AuthOtp extends StatefulWidget {
  final String placeHolder;
  final Function(String value) onText;

  const AuthOtp({
    required this.placeHolder,
    required this.onText,
    super.key,
  });

  @override
  State<AuthOtp> createState() => _AuthOtpState();
}

class _AuthOtpState extends State<AuthOtp> {
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
      child: OtpTextField(
        numberOfFields: 4,
        borderColor: Colors.blue[300]!,
        enabledBorderColor: Colors.grey[300]!,
        fillColor: Colors.blue[300]!,
        showFieldAsBox: false,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],

        mainAxisAlignment: MainAxisAlignment.center,
        onCodeChanged: (String code) {},
        onSubmit: (String verificationCode) {}, // end onSubmit
      ),
    );
  }
}
