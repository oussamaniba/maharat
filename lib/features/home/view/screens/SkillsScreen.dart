import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/values/constants.dart';
import 'package:maharat/features/home/models/Skills.dart';
import 'package:maharat/features/home/provider/HomeViewModel.dart';
import 'package:maharat/features/home/view/widgets/home_widgets/HomeWrapper.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class SkillsScreen extends ViewModelWidget<HomeViewModel> {
  final SkillsType skill;
  const SkillsScreen({
    required this.skill,
    super.key,
  });

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    List<Skills> selectedSkills = Skills.skills.where((s) => s.type == skill).toList();
    return HomeWrapper(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ).copyWith(bottom: 20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 100,
          ),
          itemCount: selectedSkills.length,
          itemBuilder: (BuildContext context, int index) {
            return _SkillsGridItem(data: selectedSkills[index]);
          },
        ),
      ),
    );
  }
}

class _SkillsGridItem extends StatelessWidget {
  final Skills data;
  const _SkillsGridItem({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.pink[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              data.text,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          SvgPicture.asset(
            "lib/core/assets/bird_fruit.svg",
            height: 80,
            width: 80,
          ).withPadding(const EdgeInsets.only(left: 00)),
        ],
      ).withPadding(const EdgeInsets.symmetric(horizontal: 10)).clickable(
            radius: BorderRadius.circular(20),
            onTap: () {},
          ),
    );
  }
}
