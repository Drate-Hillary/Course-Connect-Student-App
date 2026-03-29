import 'package:course_connect/common/widgets/save_changes.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Personal Information',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: AppSize.spaceBtwItems),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Full Name'),
        ),
        const SizedBox(height: AppSize.spaceBtwItems),
        TextFormField(decoration: InputDecoration(labelText: 'Email Address')),
        const SizedBox(height: AppSize.spaceBtwItems),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Date of Birth'),
        ),
        const SizedBox(height: AppSize.spaceBtwItems),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Phone Number'),
        ),
        const SizedBox(height: AppSize.spaceBtwItems),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Gender',
            labelStyle: Theme.of(context).textTheme.bodySmall,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),

        const SizedBox(height: AppSize.spaceBtwItems),
        TextField(
          maxLines: 3,
          minLines: 3,
          decoration: InputDecoration(
            labelText: 'Bio',
            alignLabelWithHint: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        const SizedBox(height: AppSize.spaceBtwSections),

        SaveChanges(
          title: "Profile Updated",
          message: "Your profile details have been successfully updated. Thank You!",
        ),
      ],
    );
  }
}
