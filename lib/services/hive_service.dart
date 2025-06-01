import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class HiveService {
  static late Box _box;
  static Future<void> init() async {
    final dir = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    _box = await Hive.openBox('progress');
  }

  static Future<void> write(String key, String value) async {
    await _box.put(key, value);
  }

  static String? read(String key) => _box.get(key);
}
