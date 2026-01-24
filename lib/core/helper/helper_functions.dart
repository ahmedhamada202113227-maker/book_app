// import 'package:book_app/core/services/get_it_service.dart';
// import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
// import 'package:book_app/domin/use_cases/fetchBooksUseCase.dart';
// import 'package:book_app/presentation/features/DetailsPage/Views/DetailsPageView.dart';
// import 'package:book_app/presentation/features/HomePage/Views/HomePageView.dart';
// import 'package:book_app/presentation/features/SplashPage/Views/SplashView.dart';
// import 'package:book_app/presentation/manager/fetch_remote_general_books/fetch_remote_api_books_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// Route<dynamic> onGenerateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case SplashView.id:
//       return MaterialPageRoute(builder: (context) => const SplashView());
//     case HomePageView.id:
//       return MaterialPageRoute(builder: (context) => const HomePageView());
//     case DetailsPageView.id:
//       return MaterialPageRoute(
//         builder: (context) => BlocProvider(
//           create: (context) => FetchRemoteApiBooksCubit(
//             getIt<FetchApiBooksUseCase>(),
//           ),
//           child: DetailsPageView(
//             apiBooksEntity: ApiBooksEntity as ApiBooksEntity,
//           ),
//         ),
//       );
//     default:
//       return MaterialPageRoute(builder: (context) => const Scaffold());
//   }
// }
