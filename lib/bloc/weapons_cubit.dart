import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:proj_35_m_reign_of_steel/bloc/gold_cubit.dart';
import 'package:proj_35_m_reign_of_steel/bloc/weapon_cubit.dart';
import 'package:proj_35_m_reign_of_steel/storages/hive.dart';
import 'package:proj_35_m_reign_of_steel/storages/models/weapon.dart';

import '../storages/models/gold.dart';

part 'weapons_state.dart';

class WeaponsCubit extends Cubit<WeaponsState> {
  WeaponsCubit() : super(const WeaponsState());

  void getWeapons() {
    final weaponKeys = AppHiveDatabase.getWeaponsKeys();
    emit(state.copyWith(
      weapons: weaponKeys.map((e) => WeaponState.fromHiveModel(e, AppHiveDatabase.getWeapon(e))).toList()
    ));
  }

  void addWeapon(WeaponState weapon) {
    AppHiveDatabase.addWeapon(weapon.toHiveModel());
    getWeapons();
  }

  void deleteWeapon(int id) {
    AppHiveDatabase.deleteWeapon(id);
    getWeapons();
  }

  void getGold() {
    final gold = AppHiveDatabase.getGold();
    emit(state.copyWith(gold: GoldState.fromHiveModel(gold)));
  }

  void updateGold(GoldState newGold) {
    AppHiveDatabase.updateGold(newGold.toHiveModel());
    getGold();
  }
}
