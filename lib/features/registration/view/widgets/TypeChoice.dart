import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharat/features/registration/models/TypeChoiceItems.dart';
import 'package:maharat/features/registration/view/widgets/RadioButton.dart';

class TypeChoice extends StatefulWidget {
  final List<TypeChoiceItem> items;

  const TypeChoice({
    required this.items,
    super.key,
  });

  @override
  State<TypeChoice> createState() => _TypeChoiceState();
}

class _TypeChoiceState extends State<TypeChoice> {
  String selectedValue = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        widget.items.length,
        (index) {
          TypeChoiceItem item = widget.items[index];
          return _TypeChoicItem(
            group: selectedValue,
            item: item,
            onSelected: () {
              setState(() {
                selectedValue = item.value;
              });
            },
          );
        },
      ),
    );
  }
}

class _TypeChoicItem extends StatelessWidget {
  final String group;
  final TypeChoiceItem item;
  final Function() onSelected;

  const _TypeChoicItem({
    required this.group,
    required this.item,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelected,
      child: Row(
        children: [
          SvgPicture.asset(
            item.image,
            width: 80,
          ),
          RadioButton(
            value: item.value,
            groupValue: group,
            onChanged: (p0) {},
          )
        ],
      ),
    );
  }
}
