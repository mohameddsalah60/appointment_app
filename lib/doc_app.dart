import 'package:doc_doc/core/routing/app_router.dart';
import 'package:doc_doc/core/routing/app_routes.dart';
import 'package:doc_doc/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        initialRoute: AppRoutes.onboarding,
        onGenerateRoute: AppRouter.onGenerateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
          fontFamily: 'Inter',
          primaryColor: AppColors.mainBlue,
          scaffoldBackgroundColor: AppColors.backgroundScaffold,
        ),
      ),
    );
  }
}
