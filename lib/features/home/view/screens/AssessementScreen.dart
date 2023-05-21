import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/home/view/widgets/home_widgets/HomeTopBar.dart';
import 'package:maharat/features/home/view/widgets/home_widgets/HomeWrapper.dart';

@RoutePage()
class AssessementScreen extends StatelessWidget {
  const AssessementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          floating: true,
          backgroundColor: Colors.transparent,
          expandedHeight: SizeSpec.of(context).height * .3,
          leading: IconButton(
            onPressed: () {
            },
            icon: const Icon(Icons.more_vert_outlined),
            color: Colors.orange,
          ),
          actions: [
            Image.asset(
              "lib/core/assets/logo.jpeg",
              height: 50,
              width: 70,
            ).withPadding(const EdgeInsets.only(right: 20))
          ],
          flexibleSpace: const HomeTopBar(),
      ),
      SliverList.list(
        children: [
            HomeWrapper(
              child: Row(
                children: [
                  _AssementItem(
                    text: "الاختبار الثاني",
                    color: Colors.blue[200]!,
                    onTap: () {},
                  ),
                  _AssementItem(
                    text: "الاختبار الأول",
                    color: Colors.pink[100]!,
                    onTap: () {},
                  ),
                ],
              ).withPadding(const EdgeInsets.only(bottom: 10)),
            ),
          ],
        )
      ]
    );
  }
}

class _AssementItem extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onTap;

  const _AssementItem({
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: color,
            width: 4,
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              "lib/core/assets/logo.jpeg",
              width: 100,
              height: 100,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      )
          .clickable(
            onTap: onTap,
            radius: BorderRadius.circular(30),
            splashColor: Colors.grey[200],
          )
          .withPadding(
            const EdgeInsets.symmetric(horizontal: 30),
          ),
    );
  }
}
