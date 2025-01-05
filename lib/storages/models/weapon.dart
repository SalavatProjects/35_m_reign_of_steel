import 'package:hive/hive.dart';

part 'weapon.g.dart';

@HiveType(typeId: 1)
class Weapon {

  @HiveField(0)
  String? type;
  
  @HiveField(1)
  String? imagePath;
  
  @HiveField(2)
  String? name;
  
  @HiveField(3)
  int? price;
}