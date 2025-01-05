import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/weapon.dart';
import 'models/gold.dart';
import 'package:proj_35_m_reign_of_steel/utils/utils.dart';

abstract class AppHiveDatabase {
  static final Box _goldBox = Hive.box<Gold>(AppConstants.goldBox);
  static final Box _weaponBox = Hive.box<Weapon>(AppConstants.weaponBox);

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter();
    Hive.registerAdapter(GoldAdapter());
    Hive.registerAdapter(WeaponAdapter());

    await Hive.openBox<Gold>(AppConstants.goldBox);
    await Hive.openBox<Weapon>(AppConstants.weaponBox);

    // Hive.deleteFromDisk();

    if (_goldBox.get(AppConstants.goldBoxValue) == null) {
      Gold gold = Gold();
      gold.number = 3000;
      _goldBox.put(AppConstants.goldBoxValue, gold);
    }
  }

  static Gold getGold() {
    return _goldBox.get(AppConstants.goldBoxValue);
  }

  static void updateGold(Gold newGold) {
    _goldBox.put(AppConstants.goldBoxValue, newGold);
  }

  static List getWeaponsKeys() {
    return _weaponBox.keys.toList();
  }

  static Weapon getWeapon(int id) {
    return _weaponBox.get(id);
  }

  static void addWeapon(Weapon weapon) {
    _weaponBox.add(weapon);
  }

  static void deleteWeapon(int id) {
    _weaponBox.delete(id);
  }
}