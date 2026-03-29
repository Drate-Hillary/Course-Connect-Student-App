import 'package:get_storage/get_storage.dart';

class LocalStorage {
  static final LocalStorage instance = LocalStorage._internal();

  factory LocalStorage() {
    return instance;
  }

  LocalStorage._internal();

  final storage = GetStorage();

  Future<void> saveData<T>(String key, T value) async {
    await storage.write(key, value);
  }

  T? readData<T>(String key) {
    return storage.read<T>(key);
  }

  Future<void> removeData(String key) async {
    await storage.remove(key);
  }

  Future<void> clearAllData() async {
    await storage.erase();
  }

}