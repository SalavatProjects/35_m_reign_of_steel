import 'package:proj_35_m_reign_of_steel/ui_kit/ui_kit.dart';
import 'package:proj_35_m_reign_of_steel/gen/gen.dart';

abstract class AppConstants {
  static const String goldBox = 'gold_box';
  static const String goldBoxValue = 'gold_box_value';
  static const String weaponBox = 'weapon_box';

  static const List<String> weaponsType = ['Melee', 'Pistol', 'Rifle', 'Shotgun', 'Sniper',];

  static final weapons = <(String type, String imagePath, String name, int price)>[
    ('Melee', Assets.images.pan.path, 'Pan', 25),
    ('Melee', Assets.images.spikedBat.path, 'Spiked Bat', 20),
    ('Melee', Assets.images.katana.path, 'Katana', 30),
    ('Melee', Assets.images.dagger.path, 'Dagger', 15),
    ('Melee', Assets.images.crowbar.path, 'Crowbar', 20),

    ('Pistol', Assets.images.p1911.path, 'P1911', 15),
    ('Pistol', Assets.images.desertEagle.path, 'Desert Eagle', 15),
    ('Pistol', Assets.images.flareGun.path, 'Flare gun', 15),
    ('Pistol', Assets.images.microUZI.path, 'Micro UZI', 15),

    ('Rifle', Assets.images.aK47Gold.path, 'AK-47 Gold', 35),
    ('Rifle', Assets.images.m416.path, 'M416', 25),
    ('Rifle', Assets.images.bcc.path, 'BCC', 25),
    ('Rifle', Assets.images.steyrAUG.path, 'Steyr AUG', 20),
    ('Rifle', Assets.images.m416Violet.path, 'M416', 35),

    ('Shotgun', Assets.images.s1897.path, 'S1897', 35),
    ('Shotgun', Assets.images.s686.path, 'S686', 30),
    ('Shotgun', Assets.images.s12k.path, 'S12K', 25),
    ('Shotgun', Assets.images.m1014.path, 'M1014', 35),

    ('Sniper', Assets.images.kar98K.path, 'Kar98K', 45),
    ('Sniper', Assets.images.awm.path, 'AWM', 50),
    ('Sniper', Assets.images.m24.path, 'M24', 55),
    ('Sniper', Assets.images.kar98KBrown.path, 'Kar98K', 60),
  ];
}