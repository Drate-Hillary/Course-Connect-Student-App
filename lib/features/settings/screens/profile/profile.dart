import 'package:course_connect/common/styles/app_bar.dart';
import 'package:course_connect/features/settings/screens/profile/widgets/profile_form.dart';
import 'package:course_connect/features/settings/screens/profile/widgets/profile_header.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile"),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Image
              ProfileHeader(),
              const SizedBox(height: AppSize.spaceBtwSections),
              ProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
