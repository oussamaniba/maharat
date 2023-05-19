import 'package:auto_route/auto_route.dart';
import 'package:conditioned/conditioned.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/core/routes/app_route.dart';
import 'package:maharat/core/routes/app_route.gr.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart';
import 'package:maharat/features/details/sections/models/Sections.dart';
import 'package:maharat/features/details/sections/provider/SectionsDetailsViewModel.dart';
import 'package:maharat/features/details/sections/view/widgets/SectionsDataItem.dart';
import 'package:maharat/features/details/widgets/DetailsAppBar.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class SectionsScreenDetails extends StackedView<SectionsDetailsViewModel> {
  final int selectedId;
  final Sections data;

  const SectionsScreenDetails({
    required this.selectedId,
    required this.data,
    super.key,
  });

  @override
  Widget builder(
    BuildContext context,
    SectionsDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              DetailsAppBar(
                title: data.data?.firstWhere((s) => s.id == selectedId).name ?? "",
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
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ).copyWith(bottom: 20),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 100,
                        ),
                        itemCount: viewModel.section!.data!.length,
                        itemBuilder: (BuildContext context, int index) {
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
                    ),
                    falseBuilder: () => const Center(
                      child: Text("No Data"),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  SectionsDetailsViewModel viewModelBuilder(BuildContext context) {
    return SectionsDetailsViewModel(
      selectedId: selectedId,
      sections: data,
    );
  }

  @override
  void onViewModelReady(SectionsDetailsViewModel viewModel) async {
    await viewModel.initializeSections(data.data!.firstWhere((s) => s.id == selectedId));
    super.onViewModelReady(viewModel);
  }
}
