import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:country_calling_code_picker/country.dart';
import 'package:maharat/core/utils/global_functions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';

class RegisterDropDown extends StatefulWidget {
  final String placeHolder;
  final Function(String value) onText;

  const RegisterDropDown({
    required this.placeHolder,
    required this.onText,
    super.key,
  });

  @override
  State<RegisterDropDown> createState() => _RegisterDropDownState();
}

class _RegisterDropDownState extends State<RegisterDropDown> {
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
          TextButton(
            onPressed: () async {
              selected = await showBottomSheetCountries(context, false);
              controller.text = selected!.name;
            },
            child: Icon(
              Icons.arrow_drop_down_rounded,
              size: 50,
              color: Colors.blue[200]!,
            ),
          ),
          Expanded(
            child: TextFormField(
              onChanged: widget.onText,
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.number,
              controller: controller,
              enabled: false,
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
