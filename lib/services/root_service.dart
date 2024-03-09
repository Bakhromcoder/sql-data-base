
import 'package:untitled4/services/hive_service.dart';
import 'package:untitled4/services/sql_service.dart';

class RootService{
  static Future<void> init() async {
    await SqlService.init();
    await HiveService.init();
  }
}