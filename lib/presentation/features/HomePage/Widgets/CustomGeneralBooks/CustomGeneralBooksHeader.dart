import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomGeneralBooksHeader extends StatelessWidget {
  const CustomGeneralBooksHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'الأكثر طلباً',
          style: AppTextStyles.semiBold16.copyWith(
            color: Colors.white,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () => {},
          icon: const Icon(
            FontAwesomeIcons.ellipsis,
          ),
        ),
      ],
    );
  }
}
