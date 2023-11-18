// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyCardAdapter extends TypeAdapter<MyCard> {
  @override
  final int typeId = 1;

  @override
  MyCard read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyCard(
      name: fields[0] as String,
      nominal: fields[1] as int,
      image: fields[2] as String,
      mainColor: fields[3] as String,
      contrastMainColor: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MyCard obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.nominal)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.mainColor)
      ..writeByte(4)
      ..write(obj.contrastMainColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyCardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
