import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:proj_35_m_reign_of_steel/storages/models/weapon.dart';

part 'weapon_state.dart';

class WeaponCubit extends Cubit<WeaponState> {
  WeaponCubit() : super(const WeaponState());

  void updateType(String value) {
    emit(state.copyWith(type: value));
  }

  void updateImagePath(String value) {
    emit(state.copyWith(imagePath: value));
  }

  void updateName(String value) {
    emit(state.copyWith(name: value));
  }

  void updatePrice(int value) {
    emit(state.copyWith(price: value));
  }

  void clearData() {
    emit(const WeaponState(
      id: null,
      type: '',
      imagePath: '',
      name: '',
      price: 0,
    ));
  }
}
