import 'package:course_connect/common/styles/app_bar.dart';
import 'package:course_connect/features/settings/screens/Academic/widgets/academic_card.dart';
import 'package:course_connect/features/settings/screens/Academic/widgets/academic_chart.dart';
import 'package:course_connect/features/settings/screens/Academic/widgets/academic_form.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';

class Academic extends StatelessWidget {
  const Academic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Academics"),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: AppSize.spaceBtwItems),
            AcademicCard(),
            // bar graph
            AcademicChart(),

            const SizedBox(height: AppSize.spaceBtwColumns,),
            AcademicForm(),
          ],
        ),
      ),
    );
  }
}

