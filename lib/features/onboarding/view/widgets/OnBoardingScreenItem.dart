import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharat/core/utils/sizespec_utils.dart';
import 'package:maharat/features/onboarding/models/OnBoardingItemModel.dart';
import 'package:maharat/features/onboarding/view/widgets/OnBoardingButton.dart';

class OnBoardingScreenItem extends StatelessWidget {
  final OnBoardingItemModel item;
  final String nextPageText;
  final String lastPageText;
  final bool isLastPage;
  final Function() onNext;
  final Function() onIgnore;

  const OnBoardingScreenItem({
    super.key,
    required this.item,
    required this.nextPageText,
    required this.lastPageText,
    required this.isLastPage,
    required this.onNext,
    required this.onIgnore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Stack(
        children: [
          SvgPicture.asset(
            "lib/core/assets/onboard_cloud.svg",
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 120,
            child: SizedBox(
              height: SizeSpec.of(context).height * .45,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SvgPicture.asset(
                      item.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: SizeSpec.of(context).height * item.boardTopPosition,
                    right: SizeSpec.of(context).width * item.boardRightPosition,
                    child: Text(
                      item.boardText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: item.boardSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: SizeSpec.of(context).height * .45),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      item.title,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item.description,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              OnBoardingButton(
                text: !isLastPage ? nextPageText : lastPageText,
                onTap: onNext,
              ),
              OnBoardingButton(
                text: "تخطي",
                color: Colors.white,
                textColor: Colors.red[100],
                onTap: onIgnore,
              )
            ],
          ),
        ],
      ),
    );
  }
}
