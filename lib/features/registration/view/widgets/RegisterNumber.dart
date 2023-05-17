import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  String? countryCode;

  @override
  void initState() {
    super.initState();
    loadCountryCode();
  }

  Future loadCountryCode() async {
    Country country = await getDefaultCountry(context);
    setState(() {
      countryCode = country.callingCode;
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
          TextButton(
            onPressed: () async => await showCountryPickerSheet(
              context,
            ).then((value) {
              setState(() {
                countryCode = value?.callingCode;
              });
            }),
            child: Text(
              countryCode ?? "--",
              style: TextStyle(
                color: Colors.red[200],
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              onChanged: (v) => widget.onText("$countryCode$v"),
              textDirection: TextDirection.rtl,
              maxLength: 9,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
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
          ),
        ],
      ),
    );
  }
}
