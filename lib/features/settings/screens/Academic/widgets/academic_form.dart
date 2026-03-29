import 'package:course_connect/common/widgets/save_changes.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';

class AcademicForm extends StatelessWidget {
  const AcademicForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.md),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Academic Information",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: AppSize.sizedBoxHeightMd,),
            TextFormField(
              decoration: InputDecoration(labelText: "School/College"),
            ),
            const SizedBox(height: AppSize.sizedBoxHeightSm),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Student Reg Number",
              ),
            ),
            const SizedBox(height: AppSize.sizedBoxHeightSm),
            TextFormField(
              decoration: InputDecoration(labelText: "Department"),
            ),
            const SizedBox(height: AppSize.sizedBoxHeightSm),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Year of Study",
                      labelStyle: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
                const SizedBox(width: AppSize.sm),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Semester",
                      labelStyle: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.sizedBoxHeightSm),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Program",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: AppSize.spaceBtwItems),
            SaveChanges(
              title: "Records Updated",
              message: "Your Academic details have successfully updated. Thank You?",
            ),
          ],
        ),
      ),
    );
  }
}
