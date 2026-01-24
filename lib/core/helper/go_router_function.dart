import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/presentation/features/CategoriesPage/Views/CategoriesPageView.dart';
import 'package:book_app/presentation/features/DetailsPage/Views/DetailsPageView.dart';
import 'package:book_app/presentation/features/HomePage/Views/HomePageView.dart';
import 'package:book_app/presentation/features/SplashPage/Views/SplashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final routerNav = GoRouter(
    // debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/HomePage',
        builder: (context, state) => const HomePageView(),
      ),
      GoRoute(
        path: '/DetailsPage',
        builder: (context, state) => DetailsPageView(
          apiBooksEntity: state.extra as ApiBooksEntity,
        ),
      ),
      GoRoute(
        path: '/CategoriesPage',
        builder: (context, state) =>  CategoriesPageView(
          category: state.extra as String,
        ),
      )
    ],
  );
}
