// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'historic_model.g.dart';

@HiveType(typeId: 0)
class HistoricModel extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final DateTime date;
  @HiveField(2)
  String statusimc;
  @HiveField(3)
  final double age;
  @HiveField(4)
  final double width;
  @HiveField(5)
  final double heith;
  @HiveField(6)
  final double imc;
  @HiveField(7)
  final Color primarycolorsstate;
   @HiveField(8)
  final Color secundarycolorsstate;
  HistoricModel({
    required this.name,
    required this.date,
    required this.statusimc,
    required this.age,
    required this.width,
    required this.heith,
    required this.imc,
    required this.primarycolorsstate,
    required this.secundarycolorsstate,
  });
  

}
