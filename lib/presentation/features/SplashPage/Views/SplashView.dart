import 'package:book_app/core/utilis/AppColors.dart';
import 'package:book_app/presentation/features/SplashPage/Widgets/SplashViewBody.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static const String id = 'splashView';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.secondaryColor,
            AppColors.secondaryColor.withOpacity(0.35),
          ],
        ),
      ),
      child: const Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SplashViewBody(),
          )),
    );
  }
}
