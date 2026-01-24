import 'package:book_app/core/utilis/AppTextStyles.dart';
import 'package:flutter/material.dart';

class CustomBlockOfBooksDetailsItem extends StatelessWidget {
  const CustomBlockOfBooksDetailsItem({
    super.key,
    required this.text1,
    this.text2,
  });

  final String text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: AspectRatio(
        aspectRatio: 4 / 3.7,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text1,
                style: AppTextStyles.bold19,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    text2 ?? '',
                    style: AppTextStyles.bold16.copyWith(
                      color: Colors.orange.shade300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
