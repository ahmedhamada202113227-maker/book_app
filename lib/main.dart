import 'package:book_app/core/Constants.dart';
import 'package:book_app/core/helper/go_router_function.dart';
import 'package:book_app/core/services/get_it_service.dart';
import 'package:book_app/domin/entites/ApiBookEntity/ApiBooksEntity.dart';
import 'package:book_app/domin/entites/BookEntity/BookEntity.dart';
import 'package:book_app/domin/entites/GeneralBooksEntity/GeneralBooksEntity.dart';
import 'package:book_app/domin/use_cases/fetchBooksUseCase.dart';
import 'package:book_app/generated/l10n.dart';
import 'package:book_app/presentation/manager/fetch_remote_general_books/fetch_remote_api_books_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  Hive.registerAdapter(GeneralBooksEntityAdapter());
  //...................................................//
  Hive.registerAdapter(ApiBooksEntityAdapter());
  //...................................................//
  await Hive.openBox<BookEntity>(kGetLocalBookBox);
  await Hive.openBox<GeneralBooksEntity>(kGetLocalGeneralBookBox);
  //...................................................//
  await Hive.openBox<ApiBooksEntity>(kGetLocalAPIBookBox);
  //...................................................//
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      isToolbarVisible: false,
      enabled: !false,
      builder: (context) => const BooklyApp(),
    ),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FetchRemoteApiBooksCubit>(
          create: (context) => FetchRemoteApiBooksCubit(
            getIt<FetchApiBooksUseCase>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: const Locale('ar'),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'ElMessiri',
        ),
        // onGenerateRoute: onGenerateRoute,
        // initialRoute: SplashView.id,
        routerConfig: AppRouter.routerNav,
      ),
    );
  }
}
