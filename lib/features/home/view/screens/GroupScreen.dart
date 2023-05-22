import 'package:auto_route/auto_route.dart';
import 'package:conditioned/conditioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/utils/global_functions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/_commons/data/remote/response/ProgramsDataResponse.dart';
import 'package:maharat/features/home/provider/HomeViewModel.dart';
import 'package:maharat/features/home/view/widgets/home_widgets/HomeTopBar.dart';
import 'package:maharat/features/home/view/widgets/home_widgets/HomeWrapper.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class GroupScreen extends ViewModelWidget<HomeViewModel> {
  final Function(ProgramsDataResponse data) onTap;
  const GroupScreen({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          floating: true,
          backgroundColor: Colors.transparent,
          expandedHeight: SizeSpec.of(context).height * .3,
          leading: IconButton(
            onPressed: () {
              logEvent("TAP");
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
          // collapsedHeight: SizeSpec.of(context).height * .3,
        ),
        SliverList.list(children: [
          HomeWrapper(
            child: Conditioned.boolean(
              viewModel.isLoading,
              trueBuilder: () => SizedBox(
                height: SizeSpec.of(context).height * .3,
                child: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
              falseBuilder: () => Conditioned.boolean(
                viewModel.programs != null && viewModel.programs?.data != null,
                trueBuilder: () => Directionality(
                  textDirection: TextDirection.rtl,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ).copyWith(bottom: 20),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 80,
                    ),
                    itemCount: viewModel.programs!.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      ProgramsDataResponse data = viewModel.programs!.data![index];
                      return _CategoriesGridItem(
                        data: data,
                        onTap: onTap,
                      );
                    },
                  ),
                ),
                falseBuilder: () => const Center(
                  child: Text("No Data"),
                ),
              ),
            ),
          )
        ]),
      ],
    );
  }
}

class _CategoriesGridItem extends StatelessWidget {
  final ProgramsDataResponse data;
  final Function(ProgramsDataResponse data) onTap;

  const _CategoriesGridItem({
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text(
              "السؤال",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
          SvgPicture.asset(
            "lib/core/assets/bird_fruit.svg",
            height: 40,
            width: 40,
          ).withPadding(const EdgeInsets.symmetric(vertical: 20)),
        ],
      ).withPadding(const EdgeInsets.symmetric(horizontal: 10)).clickable(
            radius: BorderRadius.circular(20),
            onTap: () => onTap(data),
          ),
    );
  }
}
