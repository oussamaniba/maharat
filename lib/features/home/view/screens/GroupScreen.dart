import 'package:auto_route/auto_route.dart';
import 'package:conditioned/conditioned.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/_commons/data/remote/response/ProgramsDataResponse.dart';
import 'package:maharat/features/home/provider/HomeViewModel.dart';
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
    return HomeWrapper(
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
                mainAxisExtent: 100,
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
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              data.name!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Image.network(
            data.avatar!,
          ).withPadding(
              const EdgeInsets.symmetric(vertical: 20).copyWith(left: 10)),
        ],
      ).withPadding(const EdgeInsets.symmetric(horizontal: 10)).clickable(
            radius: BorderRadius.circular(20),
            onTap: () => onTap(data),
          ),
    );
  }
}
