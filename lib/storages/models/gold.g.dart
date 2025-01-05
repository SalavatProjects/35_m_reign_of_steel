// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gold.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GoldAdapter extends TypeAdapter<Gold> {
  @override
  final int typeId = 0;

  @override
  Gold read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Gold()..number = fields[0] as int?;
  }

  @override
  void write(BinaryWriter writer, Gold obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.number);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
