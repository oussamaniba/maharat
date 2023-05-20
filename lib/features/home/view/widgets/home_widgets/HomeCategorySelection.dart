import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/home/models/CategoryItem.dart';

class HomeCategoriesSelection extends StatelessWidget {
  final int selected;
  final Function(int index) onChange;
  const HomeCategoriesSelection({
    required this.selected,
    required this.onChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeSpec.of(context).width,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:
              List.generate(CategoryItem.categories.reversed.length, (index) {
            var item = CategoryItem.categories.toList()[index];
            return Expanded(
              child: _CategoryItem(
                item: item,
                selected: index == selected,
                onSelect: () => onChange(index),
              ),
            );
          }),
        ).withPadding(const EdgeInsets.only(top: 10)),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final CategoryItem item;
  final bool selected;
  final Function() onSelect;

  const _CategoryItem({
    required this.item,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelect(),
      borderRadius: BorderRadius.circular(40),
      child: SizedBox(
        height: 190.0,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  selected
                      ? "lib/core/assets/selected.png"
                      : "lib/core/assets/not-selected.png",
                ),
                Positioned(
                  top: 60,
                  right: 70,
                  child: Text(
                    item.text,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ).withPadding(const EdgeInsets.symmetric(horizontal: 10)),
            if (selected) ...[
              Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.pink[300]!,
                size: 60,
              )
            ]
          ],
        ),
      ),
    );
  }
}
