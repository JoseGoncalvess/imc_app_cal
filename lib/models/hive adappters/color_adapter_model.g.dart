
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ColorModelAdapter extends TypeAdapter<Color> {
  @override
  final int typeId = 1;

  @override
  Color read(BinaryReader reader) => Color(reader.readUint32());

  @override
  void write(BinaryWriter writer, Color obj) =>  writer.writeUint32(obj.value); 

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
