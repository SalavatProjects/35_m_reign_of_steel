import 'package:hive/hive.dart';

part 'gold.g.dart';

@HiveType(typeId: 0)
class Gold {
  @HiveField(0)
  int? number;
}