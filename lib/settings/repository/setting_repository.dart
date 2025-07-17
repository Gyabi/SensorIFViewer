import 'package:shared_preferences/shared_preferences.dart';
import 'package:sensor_if_viewer/settings/bloc/setting_model.dart';

class SettingRepository {
  Future<void> saveSetting(SettingItem setting) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('port', setting.port);
    await prefs.setBool('show_sensor', setting.showSensor); 
    await prefs.setBool('show_object', setting.showObject); 
  }

  Future<SettingItem> loadSetting() async {
    final prefs = await SharedPreferences.getInstance();
    final port = prefs.getInt('port');
    final showSensor = prefs.getBool('show_sensor');
    final showObject = prefs.getBool('show_object');

    return SettingItem(port: port ?? 0, showSensor: showSensor ?? true, showObject:showObject ?? true);
  }
}
