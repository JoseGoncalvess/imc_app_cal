// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../historic_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HistoricModelAdapter extends TypeAdapter<HistoricModel> {
  @override
  final int typeId = 0;

  @override
  HistoricModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HistoricModel(
      name: fields[0] ?? '',
      date: fields[1] ?? DateTime.now(),
      statusimc: fields[2] ??'',
      age: fields[3] ??0,
      width: fields[4] ??0,
      heith: fields[5] ??0,
      imc: fields[6] ??0,
      primarycolorsstate: fields[7] as Color,
      secundarycolorsstate: fields[8] as Color,
    ); 
  }

  @override
  void write(BinaryWriter writer, HistoricModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.statusimc)
      ..writeByte(3)
      ..write(obj.age)
      ..writeByte(4)
      ..write(obj.width)
      ..writeByte(5)
      ..write(obj.heith)
      ..writeByte(6)
      ..write(obj.imc)
      ..writeByte(7)
      ..write(obj.primarycolorsstate)
      ..writeByte(8)
      ..write(obj.secundarycolorsstate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HistoricModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
