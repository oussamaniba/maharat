import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestDataResponse.dart';

class IdentificationTest extends StatefulWidget {
  final SectionsTestDataResponse data;
  const IdentificationTest({
    super.key,
    required this.data,
  });

  @override
  State<IdentificationTest> createState() => _IdentificationTestState();
}

class _IdentificationTestState extends State<IdentificationTest> {
  int selectedIndex = 0;

  updateSelectedIndex(int i) {
    setState(() {
      selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: SizeSpec.of(context).width,
      child: PageView.builder(
        itemCount: widget.data.program?.images?.length ?? 0,
        controller: PageController(viewportFraction: .3),
        padEnds: false,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(widget.data.program?.images?[index]),
                fit: BoxFit.scaleDown,
              ),
              border: selectedIndex == index
                  ? Border.all(
                      color: Colors.blue,
                      width: 5,
                    )
                  : null,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  offset: const Offset(.5, .5),
                )
              ],
            ),
          )
              .clickable(
                onTap: () => updateSelectedIndex(index),
                radius: BorderRadius.circular(20),
              )
              .withPadding(const EdgeInsets.symmetric(horizontal: 10));
        },
      ),
    );
  }
}
