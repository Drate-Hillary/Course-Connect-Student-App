import 'package:course_connect/features/authentication/screens/login/login.dart';
import 'package:course_connect/features/onboarding/screens/onboarding.dart';
import 'package:course_connect/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const Onboarding(),
    );
  }
}