import 'package:flutter/material.dart';
import 'package:imc_app_cal/pages/home/home.dart';

abstract class HomeViewModel extends State<Home> {
  List<String> tamanho = ["cm", "m"];
  List<String> pesos = ["kg", "g"];
  List<bool> togleSelect = [true, false];
  List<Widget> gendertype = [
    Icon(Icons.man_2_rounded),
    Icon(Icons.woman_2_rounded)
  ];
  final name = TextEditingController();
  final age = TextEditingController();
  final heith = TextEditingController();
  final width = TextEditingController();

  String stateimc = "";
  String resulImc = "";

  double _calcImc({required double width, required double heith}) {
    return width / (heith * heith);
  }

  void setStateImc({required double width, required double heith}){
    double imc = width / (heith * heith);
      String state ='';
    switch(imc){
      case < 18.5:
       state = "Abaixo do Peso";
       case >=18.5 && < 24.9:
       state = "Abaixo Normal";
       case >=25 && < 29.9:
       state = "Excesso de Peso";
       case >=30:
       state = "Obesidade";
       case >30 && < 34.9:
       state = "Obesidade Grau I";
       case >35 && <= 39.9:
       state = "Obesidade Grau II";
       case > 40:
       state = "Obesidade Morbida";

    }
    setState(() {
      resulImc = imc.toStringAsFixed(1);
      stateimc = state;
    });
  }

  waringimc(double imc){
    double minvalue = 18.5;
    double maxvalue = 24.9;
    double waring = 0;
    // switch (imc) {
    //   case > maxvalue:
    //     waring = imc - maxvalue;
        
      
    // }
  }
}
