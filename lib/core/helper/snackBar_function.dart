import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:flutter/material.dart';

void BuildSnackBar(BuildContext context, String message, Color color,
    dynamic Function()? onVisiblee) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 2),
      onVisible: onVisiblee,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      content: Text(
        message,
        style: AppTextStyles.bold13.copyWith(color: Colors.white),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
