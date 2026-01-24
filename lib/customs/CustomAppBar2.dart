import 'package:book_app/core/utilis/AppColors.dart';
import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context,
    {required String title, Widget? leadingIcon}) {
  return AppBar(
    backgroundColor: AppColors.secondaryColor,
    elevation: 100,
    title: Text(
      title,
      style: AppTextStyles.bold19.copyWith(color: Colors.white),
    ),
    centerTitle: true,
    leading: leadingIcon,
  );
}
