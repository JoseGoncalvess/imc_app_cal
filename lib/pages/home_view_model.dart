import 'package:flutter/material.dart';
import 'package:imc_app_cal/pages/home/home.dart';

import '../src/enum_state_imc.dart';

abstract class HomeViewModel extends State<Home> {
  List<String> tamanho = ["cm", "m"];
  List<String> pesos = ["kg", "g"];
  List<bool> togleSelect = [true, false];
  List<Widget> gendertype = [
    const Icon(Icons.man_2_rounded),
    const Icon(Icons.woman_2_rounded)
  ];
   Color imcprimaryColor = Colors.deepPurple;
   Color imcsecundaryColor = Colors.deepPurple.shade400;
  final name = TextEditingController();
  final age = TextEditingController();
  final heith = TextEditingController();
  final width = TextEditingController();

  String stateImc = "";
  String resulImc = "";
  String noticelImc = "";
  String diflImc = "";

  double _calcImc({required double width, required double heith}) {
    return width / (heith * heith); 
  }

 
  _waringimc(double imc) {
    const double minvalue = 18.5;
    const double maxvalue = 24.9;
    double waring = 0;
    String msg = '';
    switch (imc) {
      case > maxvalue:
        waring = imc - maxvalue;
        msg = "Acima do peso Ideal:";
      case < minvalue:
      waring = imc - minvalue;
      msg = "Abaixo do peso Ideal:";
      case >= minvalue && <= maxvalue:
        waring = 0.0;
        msg = "Está no peso Ideal!";
    }

    setState(() {
      diflImc =  waring.toStringAsFixed(1);
      noticelImc = msg;
    });
  }

   void setStateImc({required double width, required double heith}) {
    double imc = width / (heith * heith);
    String state = '';
    late Color primary;
    late Color secundary;
    switch (imc) {
      case < 16.9:
        state = EnumStateimac.mtBaixo.status;
        primary =EnumStateimac.mtBaixo.primary; 
        secundary =EnumStateimac.mtBaixo.secundary; 
      case >= 17 && < 18.4:
        state = EnumStateimac.abaixo.status;
        primary =EnumStateimac.abaixo.primary; 
        secundary =EnumStateimac.abaixo.secundary; 
      case >= 18.5 && < 24.9:
        state = EnumStateimac.normal.status;
         primary =EnumStateimac.normal.primary; 
        secundary =EnumStateimac.normal.secundary; 
      case >= 25 && < 29.9:
        state = EnumStateimac.sobrepeso.status;
         primary =EnumStateimac.sobrepeso.primary; 
        secundary =EnumStateimac.sobrepeso.secundary; 
      case >= 30 && < 34.9:
        state = EnumStateimac.obesidadeI.status;
        primary =EnumStateimac.obesidadeI.primary; 
        secundary =EnumStateimac.obesidadeI.secundary; 
      case > 35 && <= 39.9:
        state = EnumStateimac.obesidadeII.status;
         primary =EnumStateimac.obesidadeII.primary; 
        secundary =EnumStateimac.obesidadeII.secundary; 
      case > 40:
        state = EnumStateimac.obesidademorb.status;
         primary =EnumStateimac.obesidademorb.primary; 
        secundary =EnumStateimac.obesidademorb.secundary;
    }
    setState(() {
      resulImc = imc.toStringAsFixed(1);
      stateImc = state;
      imcprimaryColor = primary;
      imcsecundaryColor = secundary;
      
    });
    _waringimc(imc);
  }
}
