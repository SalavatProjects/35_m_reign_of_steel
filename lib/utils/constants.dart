import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';


abstract class AppConstants {
  static const String goldBox = 'gold_box';
  static const String goldBoxValue = 'gold_box_value';
  static const String weaponBox = 'weapon_box';

  static const List<String> weaponsType = ['Melee', 'Pistol', 'Rifle', 'Shotgun', 'Sniper',];

  static final weapons = <(String type, String imagePath, String name, int price)>[
    ('Melee', 'assets/images/pan.png', 'Pan', 25),
    ('Melee', 'assets/images/spiked bat.png', 'Spiked Bat', 20),
    ('Melee', 'assets/images/katana.png', 'Katana', 30),
    ('Melee', 'assets/images/dagger.png', 'Dagger', 15),
    ('Melee', 'assets/images/crowbar.png', 'Crowbar', 20),

    ('Pistol', 'assets/images/p1911.png', 'P1911', 15),
    ('Pistol', 'assets/images/Desert Eagle.png', 'Desert Eagle', 15),
    ('Pistol', 'assets/images/Flare gun.png', 'Flare gun', 15),
    ('Pistol', 'assets/images/Micro UZI.png', 'Micro UZI', 15),

    ('Rifle', 'assets/images/AK-47 Gold.png', 'AK-47 Gold', 35),
    ('Rifle', 'assets/images/M416.png', 'M416', 25),
    ('Rifle', 'assets/images/BCC.png', 'BCC', 25),
    ('Rifle', 'assets/images/Steyr AUG.png', 'Steyr AUG', 20),
    ('Rifle', 'assets/images/M416 violet.png', 'M416', 35),

    ('Shotgun', 'assets/images/S1897.png', 'S1897', 35),
    ('Shotgun', 'assets/images/S686.png', 'S686', 30),
    ('Shotgun', 'assets/images/S12K.png', 'S12K', 25),
    ('Shotgun', 'assets/images/M1014.png', 'M1014', 35),

    ('Sniper', 'assets/images/Kar98K.png', 'Kar98K', 45),
    ('Sniper', 'assets/images/AWM.png', 'AWM', 50),
    ('Sniper', 'assets/images/M24.png', 'M24', 55),
    ('Sniper', 'assets/images/Kar98K brown.png', 'Kar98K', 60),
  ];
}