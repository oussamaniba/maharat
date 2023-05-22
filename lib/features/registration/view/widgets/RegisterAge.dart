import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:country_calling_code_picker/country.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class RegisterAge extends StatefulWidget {
  final String placeHolder;
  final Function(String value) onText;

  const RegisterAge({
    required this.placeHolder,
    required this.onText,
    super.key,
  });

  @override
  State<RegisterAge> createState() => _RegisterAgeState();
}

class _RegisterAgeState extends State<RegisterAge> {
  Country? selected;
  TextEditingController controller = TextEditingController();
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
          Expanded(
            child: TextFormField(
              onChanged: widget.onText,
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.number,
              controller: controller,
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
