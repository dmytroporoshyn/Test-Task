import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task/ui/shared/app_colors.dart';

import 'app/locator.dart';
import 'app/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureDependencies(Environment.prod);
  runApp(EasyLocalization(
      path: 'assets/translations',
      fallbackLocale: Locale("en"),
      supportedLocales: [Locale("en")],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test Task',
      getPages: getPages,
      initialRoute: initialRoute,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black)),
        scaffoldBackgroundColor: AppColors.background,
        errorColor: AppColors.error,
        primarySwatch: AppColors.generateMaterialColor(AppColors.mainColor),
      ),
    );
  }
}
