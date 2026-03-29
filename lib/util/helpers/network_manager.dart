import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:course_connect/common/loaders/loaders.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> connectivitySubscription;
  final Rx<ConnectivityResult> connectionStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    connectivitySubscription = connectivity.onConnectivityChanged.listen(updateConnectionStatus);
  }

  Future<void> updateConnectionStatus(List<ConnectivityResult> result) async {
    connectionStatus.value = result.isNotEmpty ? result.first : ConnectivityResult.none;
    if (connectionStatus.value == ConnectivityResult.none) {
      AppLoaders.warningSnackBar(title: "No Internet Connection");
    }
  }

  Future<bool> isConnected() async {
    try {
      final result = await connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.none)) return false;
      return result.isNotEmpty && !result.contains(ConnectivityResult.none);
    } on Exception catch (_) {
      return false;
    }
  }
}