import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:imc_app_cal/helpers/hive_structure.dart';
import 'package:imc_app_cal/models/historic_model.dart';
import 'myapp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveStructure().initDirectory();
   Hive.registerAdapter(HistoricModelAdapter());
  await Hive.openBox('HiveHistoricCalc');

  runApp(const MyApp());
}
