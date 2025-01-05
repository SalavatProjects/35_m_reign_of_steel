import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:proj_35_m_reign_of_steel/storages/models/gold.dart';

part 'gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  GoldCubit() : super(const GoldState());

  void updateNumber(int value) {
    emit(state.copyWith(number: value));
  }
}
