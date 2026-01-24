import 'package:book_app/core/utilis/assetsImages.dart';
import 'package:book_app/presentation/features/HomePage/Widgets/CustomCategoriesListView/CustomCategoryItem.dart';
import 'package:flutter/material.dart';

class CustomCategoriesListView extends StatelessWidget {
  CustomCategoriesListView({
    super.key,
  });

  final List<String> categories = [
   'Business',
   'Computers',
    'Cooking',
    'Education',
    'Health',
    'History',
    'Biography',
    'Art',
     'Sports',
    'Travel',
    'Children',
    'Science',
    'Self-Help',
    'Horror',
    'Literature',  
  ];

  final List<String> categoryImages = [
    Assets.imagesBusinessCategory,
    Assets.imagesComputersCategory,
    Assets.imagesCookingCategory,
    Assets.imagesEducationCategory,
    Assets.imagesHealthCategoty,
    Assets.imagesHistoryCategory,
    Assets.imagesBiographyCategory,
    Assets.imagesArtCategory,
    Assets.imagesSportsCategory,
    Assets.imagesTravelCategory,
    Assets.imagesChildrenCategory,
    Assets.imagesScienceCategory,
    Assets.imagesSelfHelpCategory,
    Assets.imagesHorrorCategory,
    Assets.imagesLiteratureCategory,

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: CustomCategoryItem(
              categoryName: categories[index],
              categoryImage: categoryImages[index],
            ),
          );
        },
      ),
    );
  }
}
