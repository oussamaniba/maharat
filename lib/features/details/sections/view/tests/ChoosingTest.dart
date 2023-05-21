import "package:conditioned/conditioned.dart";
import "package:flutter/material.dart";
import "package:maharat/core/extensions/widget_extensions.dart";
import "package:maharat/core/utils/sizespec_utils.dart";
import "package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestDataResponse.dart";
import "package:maharat/features/details/widgets/HoriztontalListWheel.dart";

class ChoosingTest extends StatefulWidget {
  final SectionsTestDataResponse data;
  const ChoosingTest({
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  State<ChoosingTest> createState() => _ChoosingTestState();
}

class _ChoosingTestState extends State<ChoosingTest> {
  int selectedIndex = 0;

  updateSelectedIndex(int i) {
    setState(() {
      selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: SizeSpec.of(context).width,
      child: HorizontalListWheelScrollView(
        itemExtent: 250.0,
        itemCount: widget.data.program?.images?.length ?? 0,
        controller: FixedExtentScrollController(initialItem: 0),
        onSelectedItemChanged: updateSelectedIndex,
        diameterRatio: 10,
        builder: (context, index) {
          String image = widget.data.program?.images[index];
          return Container(
            width: SizeSpec.of(context).width * .3,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.scaleDown,
              ),
              border: selectedIndex == index ? Border.all(color: Colors.blue, width: 5) : null,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  offset: const Offset(.5, .5),
                )
              ],
            ),
            child: Conditioned.boolean(
              selectedIndex == index,
              trueBuilder: () => Container(
                height: 30,
                width: 30,
                margin: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              falseBuilder: () => const SizedBox.shrink(),
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
