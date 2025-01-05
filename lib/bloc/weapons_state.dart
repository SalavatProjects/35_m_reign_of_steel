part of 'weapons_cubit.dart';

class WeaponsState extends Equatable{

  const WeaponsState({
      this.weapons = const [],
      this.gold,
  });

  final List<WeaponState> weapons;
  final GoldState? gold;

  @override
  // TODO: implement props
  List<Object?> get props => [weapons, gold];

  WeaponsState copyWith({
    List<WeaponState>? weapons,
    GoldState? gold,
  }) {
    return WeaponsState(
      weapons: weapons ?? this.weapons,
      gold: gold ?? this.gold
    );
  }

}

