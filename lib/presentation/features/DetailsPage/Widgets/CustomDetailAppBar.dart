import 'package:book_app/core/utilis/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDetailAppBar extends StatelessWidget {
  const CustomDetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Row(
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
          IconButton(
            onPressed: () => {
              Navigator.pop(context),
            },
            splashRadius: 30,
            splashColor: AppColors.primaryColor,
            padding: EdgeInsets.zero,
            icon: const Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
