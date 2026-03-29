import 'package:course_connect/common/loaders/loaders.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';

class SaveChanges extends StatelessWidget {
  const SaveChanges({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton.icon(
        onPressed: () {
          AppLoaders.successSnackBar(
            title: title,
            message: message,
          );
        },
        icon: Icon(Icons.save_outlined, size: AppSize.iconMd),
        label: Text("Save Changes", ),
      ),
    );
  }
}