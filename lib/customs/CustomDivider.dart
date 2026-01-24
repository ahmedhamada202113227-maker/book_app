import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.0),
      child: Divider(
        color: Colors.blueGrey,
        height: 10,
        thickness: 2,
        indent: 0,
        endIndent: 0,
      ),
    );
  }
}
