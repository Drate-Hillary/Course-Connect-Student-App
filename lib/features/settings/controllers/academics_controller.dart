import 'package:get/get.dart';

class AcademicsController extends GetxController {
  static AcademicsController get instance => Get.find();

  final RxList<double> coursePerformance = <double>[].obs;

  static const List<Map<String, dynamic>> courses = [
    {'code': 'CS101', 'name': 'Advanced Js', 'score': 85.0},
    {'code': 'MT201', 'name': 'CSS Styling', 'score': 72.0},
    {'code': 'PH101', 'name': 'Mobile Development', 'score': 90.0},
    {'code': 'EG301', 'name': 'Laravel Fundaments', 'score': 78.0},
    {'code': 'DS401', 'name': 'Data Struct.', 'score': 88.0},
  ];

  @override
  void onInit() {
    super.onInit();
    coursePerformance.value = courses.map((e) => e['score'] as double).toList();
  }
}