import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:imc_app_cal/helpers/hive_structure.dart';
import 'models/historic_model.dart';
import 'myapp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveStructure().initDirectory();
   Hive.registerAdapter(HistoricModelAdapter());
  await Hive.openBox('HiveHistoricCalc');

  runApp(const MyApp());
}
