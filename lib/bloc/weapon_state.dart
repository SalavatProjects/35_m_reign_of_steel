part of 'weapon_cubit.dart';


class WeaponState extends Equatable{

  const WeaponState({
    this.id,
    this.type = '',
    this.imagePath = '',
    this.name = '',
    this.price = 0
  });

  final int? id;
  final String type;
  final String imagePath;
  final String name;
  final int price;

  factory WeaponState.fromHiveModel(int key, Weapon weapon) {
    return WeaponState(
        id: key,
        type: weapon.type ?? '',
        imagePath: weapon.imagePath ?? '',
        name: weapon.name ?? '',
        price: weapon.price ?? 0,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, type, imagePath, name, price];

  WeaponState copyWith({
    int? id,
    String? type,
    String? imagePath,
    String? name,
    int? price,
  }) {
    return WeaponState(
      id: id ?? this.id,
      type: type ?? this.type,
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  Weapon toHiveModel() {
    return Weapon()
        ..type = type
        ..imagePath = imagePath
        ..name = name
        ..price = price;
  }
}
