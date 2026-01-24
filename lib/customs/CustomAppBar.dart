import 'package:book_app/core/utilis/AppColors.dart';
import 'package:book_app/core/utilis/assetsImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => {},
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 35,
          child: AspectRatio(
            aspectRatio: 2 / 1.5,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                splashRadius: 30,
                splashColor: AppColors.primaryColor,
                padding: EdgeInsets.zero,
                icon: SvgPicture.asset(
                  Assets.imagesSplashImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomSeconditemOfSearchBar extends StatelessWidget {
  const CustomSeconditemOfSearchBar({
    super.key,
    required this.widget,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: widget,
    );
  }
}
