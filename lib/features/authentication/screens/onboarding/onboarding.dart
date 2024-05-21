import 'package:ecommerce_app/features/authentication/screens/onboarding.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onBoardingPage.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onBoardingSkip.dart';
import 'package:ecommerce_app/utils/constant/colors.dart';
import 'package:ecommerce_app/utils/constant/image_strings.dart';
import 'package:ecommerce_app/utils/constant/sizes.dart';
import 'package:ecommerce_app/utils/constant/text_strings.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // isi onboarding pages
          PageView(
            children: const [
              OnBoardingPage(
                title: DTexts.onBoardingTitle1,
                image: DImages.onBoardingFood,
                subTitle: DTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                title: DTexts.onBoardingTitle2,
                image: DImages.onBoardingDaur,
                subTitle: DTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                title: DTexts.onBoardingTitle3,
                image: DImages.onBoardingPupuk,
                subTitle: DTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNav(),
        ],
      ),
    );
  }
}

class OnBoardingDotNav extends StatelessWidget {
  const OnBoardingDotNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = DHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: DDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: DSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? DColors.light: DColors.dark, dotHeight: 6),
      ),
    );
  }
}
