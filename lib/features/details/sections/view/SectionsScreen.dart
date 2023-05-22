import 'package:auto_route/auto_route.dart';
import 'package:conditioned/conditioned.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/routes/app_route.dart';
import 'package:maharat/core/routes/app_route.gr.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/_commons/data/remote/response/ProgramsDataResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart';
import 'package:maharat/features/details/sections/provider/SectionsViewModel.dart';
import 'package:maharat/features/details/sections/view/widgets/SectionsDataItem.dart';
import 'package:maharat/features/details/widgets/DetailsAppBar.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class SectionsScreen extends StackedView<SectionsViewModel> {
  final ProgramsDataResponse data;
  const SectionsScreen({
    required this.data,
    super.key,
  });

  @override
  Widget builder(
    BuildContext context,
    SectionsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Column(
        children: [
          DetailsAppBar(
            title: data.name ?? "",
            onBack: () {
              getIt<AppRoutes>().pop();
            },
          ),
          Expanded(
            child: Conditioned.boolean(
              viewModel.isLoading,
              trueBuilder: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              falseBuilder: () => Conditioned.boolean(
                viewModel.section != null && viewModel.section?.data != null,
                trueBuilder: () => Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    width: SizeSpec.of(context).width,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      direction: Axis.horizontal,
                      textDirection: TextDirection.rtl,
                      spacing: 20,
                      runSpacing: 20,
                      children: List.generate(
                        viewModel.section!.data!.length,
                        (index) {
                          SectionsDataResponse data = viewModel.section!.data![index];
                          return SectionssDataItems(
                            data: data,
                            onTap: (id) {
                              getIt<AppRoutes>().push(
                                SectionsRouteDetails(
                                  selectedId: id.id!,
                                  data: viewModel.section!,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ).withPadding(const EdgeInsets.symmetric(horizontal: 30, vertical: 40)).toScrollable(),
                  ),
                  // child: GridView.builder(
                  //   padding: const EdgeInsets.symmetric(
                  //     horizontal: 30,
                  //     vertical: 10,
                  //   ).copyWith(bottom: 20),
                  //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 4,
                  //     mainAxisSpacing: 10,
                  //     crossAxisSpacing: 10,
                  //     mainAxisExtent: 100,
                  //   ),
                  //   itemCount: viewModel.section!.data!.length,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     SectionsDataResponse data = viewModel.section!.data![index];
                  //     return SectionssDataItems(
                  //       data: data,
                  //       onTap: (id) {
                  //         getIt<AppRoutes>().push(
                  //           SectionsRouteDetails(
                  //             selectedId: id.id!,
                  //             data: viewModel.section!,
                  //           ),
                  //         );
                  //       },
                  //     );
                  //   },
                  // ),
                ),
                falseBuilder: () => const Center(
                  child: Text("No Data"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  SectionsViewModel viewModelBuilder(BuildContext context) {
    return SectionsViewModel();
  }

  @override
  void onViewModelReady(SectionsViewModel viewModel) async {
    await viewModel.initializeSections(data);
    super.onViewModelReady(viewModel);
  }
}
