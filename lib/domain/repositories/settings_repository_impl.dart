import 'package:shared_preferences/shared_preferences.dart';
import 'package:time_zone_test/domain/repositories/settings_repository.dart';
import '../../core/constants.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SharedPreferences preferences;

  SettingsRepositoryImpl({required this.preferences});

  @override
  bool isDarkThemeSelected() {
    final isSelected = preferences.getBool(isDarkThemeSelectedKey);
    return isSelected ?? false;
  }

  @override
  Future<void> setDarkThemeSelected(bool isSelected) async {
    await preferences.setBool(isDarkThemeSelectedKey, isSelected);
  }
}
