// import 'package:book_app/core/utilis/AppColors.dart';
// import 'package:book_app/core/utilis/AppTextStyles.dart';
// import 'package:flutter/material.dart';

// class CustomSearchTextField extends StatelessWidget {
//   const CustomSearchTextField({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(50),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.white.withOpacity(0.3),
//             blurRadius: 9,
//             spreadRadius: 0,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: TextField(
//         style: AppTextStyles.semiBold15.copyWith(color: AppColors.TextColor),
//         cursorColor: Colors.orange,
//         keyboardType: TextInputType.text,
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: AppColors.secondaryColor,
//           contentPadding: EdgeInsetsDirectional.zero,
//           hoverColor: Colors.deepOrange,
//           hintText: 'ابحث عن منتجك',
//           hintStyle: AppTextStyles.regular13
//               .copyWith(color: Colors.white.withOpacity(0.8)),
//           suffixIcon: Container(
//             height: 50,
//             width: 50,
//             child: Center(
//               child: Image.asset(
//                 Assets.imagesSearchFilter,
//               ),
//             ),
//           ),
//           prefixIcon: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               width: 40,
//               height: 40,
//               child: Center(
//                 child: SvgPicture.asset(
//                   Assets.imagesSearchIcon,
//                 ),
//               ),
//             ),
//           ),
//           border: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: AppColors.BorderSideColor,
//               width: 0.5,
//             ),
//             borderRadius: BorderRadius.circular(50),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: AppColors.BorderSideColor,
//               width: 0.5,
//             ),
//             borderRadius: BorderRadius.circular(50),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: AppColors.BorderSideColor,
//               width: 1,
//             ),
//             borderRadius: BorderRadius.circular(50),
//           ),
//         ),
//       ),
//     );
//   }
// }
