// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historic_model.dart';

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
      name: fields[0] as String,
      date: fields[1] as DateTime,
      statusimc: fields[2] as String,
      age: fields[3] as double,
      width: fields[4] as double,
      heith: fields[5] as double,
      imc: fields[6] as double,
      primarycolorsstate:  Color(reader.readUint32()),
      secundarycolorsstate: Color(reader.readUint32()),
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
      ..writeUint32(7)
      ..writeUint32(obj.primarycolorsstate.value)
      ..writeUint32(8)
      ..writeUint32(obj.secundarycolorsstate.value);
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
