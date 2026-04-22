import 'package:course_connect/common/loaders/loaders.dart';
import 'package:course_connect/features/authentication/screens/password%20configuration/forgot_password.dart';
import 'package:course_connect/navigation_menu.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: TextStrings.email,
              prefixIcon: Icon(Iconsax.send_2),
            ),
          ),
          const SizedBox(height: AppSize.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TextStrings.password,
              prefixIcon: Icon(Iconsax.lock),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
    
          const SizedBox(height: AppSize.spaceBtwInputFields / 2),
    
          // remember me and forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // remember me
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(TextStrings.rememberMe),
                ],
              ),
    
              // forget password
              TextButton(
                onPressed: () => ForgotPassword.show(context),
                child: Text(
                  TextStrings.forgotPassword,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
    
          const SizedBox(height: AppSize.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()=> {
                AppLoaders.successSnackBar(title: "Login Successful", message: "Welcome back, John Doe!"),
                Future.delayed(const Duration(seconds: 2), () {
                  Get.offAll(() => const NavigationMenu());
                }),
              },
              child: Text(TextStrings.signIn),
            ),
          ),
        ],
      ),
    );
  }
}
