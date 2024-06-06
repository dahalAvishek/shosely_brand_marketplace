import 'package:flutter/material.dart';

import 'core/constants/app_colors.dart';
import 'feature/discover/discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class NoOverScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'ManropeExtraBold',
                fontSize: 16),
            iconTheme: IconThemeData(size: 24, color: Colors.black)),
        scaffoldBackgroundColor: AppColors.white,
        primaryColor: AppColors.black,
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: AppColors.white),
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: AppColors.black,
            onPrimary: AppColors.white,
            secondary: AppColors.black,
            onSecondary: AppColors.white,
            error: AppColors.red,
            onError: AppColors.white,
            outline: AppColors.borderShade,
            surface: AppColors.surfaceLightShade,
            onSurface: AppColors.surfaceShade),
      ),
      home: const DiscoverScreen(),
      // builder: (context, child) =>
      //     ScrollConfiguration(behavior: NoOverScrollBehavior(), child: child!),
    );
  }
}
