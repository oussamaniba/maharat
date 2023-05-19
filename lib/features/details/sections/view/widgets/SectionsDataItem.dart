import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart';

class SectionssDataItems extends StatelessWidget {
  final SectionsDataResponse data;
  final Function(SectionsDataResponse data) onTap;

  const SectionssDataItems({
    super.key,
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue[100],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              data.name!.replaceAll(" .. ", "\n"),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          SizedBox(
            width: 50,
            height: 100,
            child: Image.network(
              data.avatar!,
            ).withPadding(
              const EdgeInsets.symmetric(vertical: 20).copyWith(left: 0),
            ),
          ),
        ],
      ).withPadding(const EdgeInsets.symmetric(horizontal: 20)).clickable(
            radius: BorderRadius.circular(20),
            onTap: () => onTap(data),
          ),
    );
  }
}
