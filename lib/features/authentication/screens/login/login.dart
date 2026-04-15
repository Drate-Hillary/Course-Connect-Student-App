import 'package:course_connect/common/styles/spacing_style.dart';
import 'package:course_connect/features/authentication/screens/login/widgets/login_form.dart';
import 'package:course_connect/features/authentication/screens/login/widgets/login_header.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginHeader(),

              const SizedBox(height: AppSize.spaceBtwSections),

              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
