part of 'gold_cubit.dart';

class GoldState extends Equatable{

  const GoldState({
    this.number = 0,
  });

  final int number;

  factory GoldState.fromHiveModel(Gold gold) {
    return GoldState(
      number: gold.number ?? 0
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [ number];

  GoldState copyWith({
    int? number,
  }) {
    return GoldState(
      number: number ?? this.number
    );
  }

  Gold toHiveModel() {
    return Gold()
      ..number = number;
  }
}

