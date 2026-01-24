import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomButtonNextPreviousPageView extends StatelessWidget {
  const CustomButtonNextPreviousPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          TextButton(
            style: const ButtonStyle(
              // backgroundColor: WidgetStateProperty.all(Colors.blueGrey),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              iconSize: WidgetStatePropertyAll(30),
            ),
            onPressed: () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.slowMiddle,
              );
            },
            child: const Icon(
              FontAwesomeIcons.circleChevronRight,
              // color: Colors.white,
            ),
          ),
          const Spacer(),
          SmoothPageIndicator(
            controller: pageController, // PageController
            count: 3,
            effect: const SlideEffect(
              dotColor: Colors.white,
              activeDotColor: Colors.blueGrey,
              dotHeight: 12,
              dotWidth: 12,
              paintStyle: PaintingStyle.stroke,
            ), // your preferred effect
          ),
          const Spacer(),
          TextButton(
            style: const ButtonStyle(
              // backgroundColor: WidgetStateProperty.all(Colors.blueGrey),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              iconSize: WidgetStatePropertyAll(30),
            ),
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.slowMiddle,
              );
            },
            child: const Icon(
              FontAwesomeIcons.circleChevronLeft,

              // color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
