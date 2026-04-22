import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    final double imageHeight = HelperFunctions.getScreenHeight() * 0.6;
    final double imageWidth = HelperFunctions.getScreenWidth() * 0.8;
    return Padding(
      padding: const EdgeInsets.all(AppSize.defaultSpace),
      child: Column(
        children: [
          if (image.toLowerCase().endsWith('.svg'))
            SvgPicture.asset(image, height: imageHeight, width: imageWidth)
          else
            Image(
              width: imageWidth,
              height: imageHeight,
              image: AssetImage(image),
            ),

          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: AppSize.spaceBtwItems),
          Text(subTitle, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
