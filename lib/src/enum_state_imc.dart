import 'package:flutter/material.dart';
import 'package:imc_app_cal/helpers/const_colors.dart';

enum EnumStateimac {
  mtBaixo(status:"Muito abaixo do peso",minvalue: 16.0, maxvalue: 16.9, primary: mtBaixoprimary, secundary:mtBaixosecundary),
  abaixo(status:"Abaixo do peso",minvalue: 17.0, maxvalue: 18.4, primary: abaixoprimary,secundary: abaixosecundary),
  normal(status:"Normal",minvalue: 18.5, maxvalue: 24.9, primary: normalprimary,secundary: normalsecundary),
  sobrepeso(status:"Sobrepeso",minvalue: 25, maxvalue: 29.9, primary: sobrepesoprimary,secundary: sobrepesosecundary),
  obesidadeI(status:"Obesidade grau I",minvalue: 30.0, maxvalue: 34.9, primary: obesidadeIprimary, secundary: obesidadeIsecundary),
  obesidadeII(status:"Obesidade grau II",minvalue: 35.0, maxvalue: 39.9,primary: obesidadeIIprimary,secundary: obesidadeIIsecundary),
  obesidademorb(status:"Obesidade Morbida",minvalue: 40.0, maxvalue: 595.0,primary: obesidademorbprimary, secundary: obesidademorbsecundary);
  const EnumStateimac({required this.status, required this.maxvalue, required this.minvalue, required this.primary, required this.secundary});

  final String status;
  final double minvalue;
  final double maxvalue;
  final Color primary;
  final Color secundary;
}
