import 'package:flutter/material.dart';
import 'package:imc_app_cal/models/historic_model.dart';
import 'package:imc_app_cal/pages/historic%20calc/historic_calc.dart';
import '../../services/repository/hive_repository.dart';

abstract class HistoricCalcViewModel extends State<HistoricCalc> {
  List<HistoricModel> historic = [];
  List<HistoricModel> historictemp = [];

  bool visibility = false;

  Future loadhistoric() async {
    HiveRepository repositorie = await HiveRepository.loadrepository();
    setState(() {
      historic = repositorie.loadhistoric();
    });
  }

  void delethistori(HistoricModel historic) async {
    HiveRepository repositorie = await HiveRepository.loadrepository();
    repositorie.delethistoric(historic);
    loadhistoric();
  }

  void deletmuchhistoric(List<HistoricModel> collection) async {
    for (var historic in collection) {
      delethistori(historic);
    }
    loadhistoric();
  }

  @override
  void initState() {
    super.initState();
    loadhistoric();
  }
}
