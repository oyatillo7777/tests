// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inson.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InsonAdapter extends TypeAdapter<Inson> {
  @override
  final int typeId = 0;

  @override
  Inson read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Inson(
      fields[1] as String,
      fields[2] as String,
      fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Inson obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.ism)
      ..writeByte(2)
      ..write(obj.fam)
      ..writeByte(3)
      ..write(obj.yoshi);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InsonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
