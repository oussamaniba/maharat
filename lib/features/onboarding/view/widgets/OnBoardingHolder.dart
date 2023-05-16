import 'package:flutter/material.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/onboarding/models/OnBoardingItemModel.dart';
import 'package:maharat/features/onboarding/view/widgets/OnBoardingScreenItem.dart';
import 'package:maharat/features/onboarding/view/widgets/PositionIndicator.dart';

class OnBoardingHolder extends StatefulWidget {
  final List<OnBoardingItemModel> onBoardings;
  final Function() onFinishOrIgnore;

  const OnBoardingHolder({
    required this.onBoardings,
    required this.onFinishOrIgnore,
    super.key,
  });

  @override
  State<OnBoardingHolder> createState() => _OnBoardingHolderState();
}

class _OnBoardingHolderState extends State<OnBoardingHolder> {
  final PageController controller = PageController(initialPage: 0);

  int selectedPage = 0;

  updateSelectedPage(int i) {
    setState(() {
      selectedPage = i;
    });
  }

  Future goToPage() async {
    await controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: updateSelectedPage,
            itemCount: widget.onBoardings.length,
            controller: controller,
            itemBuilder: (context, index) {
              OnBoardingItemModel item = widget.onBoardings[index];
              bool isLastPage = selectedPage == widget.onBoardings.length - 1;
              return OnBoardingScreenItem(
                item: item,
                nextPageText: "التالى",
                lastPageText: "نهاية",
                isLastPage: isLastPage,
                onNext: () {
                  if (isLastPage) {
                    widget.onFinishOrIgnore();
                  } else {
                    goToPage();
                  }
                },
                onIgnore: () {},
              );
            },
          ),
        ),
        SizedBox(
          height: 100,
          width: SizeSpec.of(context).width,
          child: Center(
            child: PositionIndocator(
              size: widget.onBoardings.length,
              position: selectedPage,
            ),
          ),
        )
      ],
    );
  }
}
