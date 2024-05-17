import 'package:flutter/material.dart';
import 'package:imc_app_cal/components/custom_historic_list.dart';
import 'historic_calc_view_model.dart';

class HistoricCalcView extends HistoricCalcViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Historico de Cálculo",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: CustomHistoricList(list: historic)
        ));
  }
}
