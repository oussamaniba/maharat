import 'package:auto_route/auto_route.dart';
import 'package:conditioned/conditioned.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/core/extensions/widget_extensions.dart';
import 'package:maharat/core/routes/app_route.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_types_response/SectionsTestTypesDataResponse.dart';
import 'package:maharat/features/details/sections/provider/SectionsTestViewModel.dart';
import 'package:maharat/features/details/sections/view/tests/IdentificationTest.dart';
import 'package:maharat/features/details/widgets/DetailsAppBar.dart';
import 'package:maharat/features/details/widgets/FloatingAppButton.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class SectionsScreenTest extends StackedView<SectionsTestViewModel> {
  final String sectionId;
  final int selectedIndex;
  final List<SectionsDataResponse> allData;

  const SectionsScreenTest({
    required this.sectionId,
    required this.selectedIndex,
    required this.allData,
    super.key,
  });

  @override
  Widget builder(
    BuildContext context,
    SectionsTestViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: FloatingAppButton(
        left: "التالى",
        onLeft: viewModel.onNext,
        right: "السابق",
        onRight: viewModel.onPrevious,
      ),
      backgroundColor: Colors.grey[50],
      appBar: PreferredSize(
        preferredSize: Size(SizeSpec.of(context).width, 100),
        child: DetailsAppBar(
          title: viewModel.title,
          onBack: () {
            getIt<AppRoutes>().pop();
          },
        ),
      ),
      body: Container(
        width: SizeSpec.of(context).width,
        margin: const EdgeInsets.only(top: 50),
        child: Conditioned.boolean(
          viewModel.isLoading,
          trueBuilder: () => SizedBox(
            height: SizeSpec.of(context).height,
            width: SizeSpec.of(context).width,
            child: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          falseBuilder: () => Column(
            children: [
              ExpandablePageView(
                children: [
                  IdentificationTest(data: viewModel.test!),
                ],
              ),
              const SizedBox(height: 30),
              TestControlWidget(
                testIndex: viewModel.selectedTestType,
                testItems: viewModel.testTypes,
                objectIndex: viewModel.index,
                allData: allData,
                onObjectTap: (index) => viewModel.updateSelectedIndex(index, true),
                onTestTap: (index) => viewModel.updateTestTypeIndex(index),
              ),
            ],
          ),
        ),
      ).toScrollable(),
    );
  }

  @override
  SectionsTestViewModel viewModelBuilder(BuildContext context) {
    return SectionsTestViewModel(
      sectionId,
      allData,
      selectedIndex,
    );
  }

  @override
  void onViewModelReady(SectionsTestViewModel viewModel) async {
    await viewModel.initialize();
    super.onViewModelReady(viewModel);
  }
}

class TestControlWidget extends StatelessWidget {
  final int testIndex;
  final List<SectionsTestTypesDataResponse> testItems;
  final int objectIndex;
  final List<SectionsDataResponse> allData;
  final Function(int index) onObjectTap;
  final Function(int index) onTestTap;

  const TestControlWidget({
    required this.testIndex,
    required this.testItems,
    required this.allData,
    required this.objectIndex,
    required this.onObjectTap,
    required this.onTestTap,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.02),
            spreadRadius: 1,
          )
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: SizeSpec.of(context).width,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                runSpacing: 10,
                spacing: 10,
                children: List.generate(
                  allData.length,
                  (index) {
                    bool selected = index == objectIndex;
                    return Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: selected ? Colors.blue[100] : Colors.blue[50],
                      ),
                      child: Center(
                        child: Text(
                          allData.elementAt(index).name!,
                          style: TextStyle(
                            color: selected ? Colors.black : Colors.blue[200],
                          ),
                        ),
                      ),
                    )
                        .clickable(
                            radius: BorderRadius.circular(30),
                            onTap: () => onObjectTap(index))
                        .withPadding(
                          const EdgeInsets.symmetric(horizontal: 10)
                              .copyWith(right: 0),
                        );
                  },
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: List.generate(
                  testItems.length,
                  (index) {
                    SectionsTestTypesDataResponse item = testItems[index];
                    bool selected = testIndex == index;
                    return Container(
                      height: 70,
                      width: 70,
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: selected ? Colors.pink[100] : Colors.pink[50],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          item.name!,
                          style: TextStyle(
                            color: selected ? Colors.white : Colors.pink[100],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ).clickable(
                      splashColor: Colors.transparent,
                      onTap: () => onTestTap(index),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
