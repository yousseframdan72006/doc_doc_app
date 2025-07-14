import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/routing/app_route.dart';
import 'package:flutter_complete_project/core/routing/route.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRoute appRoute;
  const DocApp({super.key, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(375, 812),
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: "Doc App",
          theme: ThemeData(
            primaryColor: ColorsManger.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRoute.generateRoute,
        );
      },
    );
  }
}
