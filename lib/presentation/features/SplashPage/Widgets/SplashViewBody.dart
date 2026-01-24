import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:book_app/core/utilis/assetsImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimation2;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(10, 0),
      end: const Offset(0, 0),
    ).animate(animationController);

    slidingAnimation2 = Tween<Offset>(
      begin: const Offset(-5, 0),
      end: const Offset(0, 0),
    ).animate(animationController);

    animationController.forward();

    excutingNavigation();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  void excutingNavigation() {
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, HomePageView.id);
    // });

    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push('/HomePage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition(
          position: slidingAnimation2,
          child: SvgPicture.asset(
            Assets.imagesSplashImage,
          ),
        ),
        const SizedBox(height: 40),
        SlideTransition(
          position: slidingAnimation,
          child: Text(
            'أقرأ كتابك المفضل',
            style: AppTextStyles.bold25
                .copyWith(color: Colors.orange[300], fontFamily: 'ElMessiri'),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
