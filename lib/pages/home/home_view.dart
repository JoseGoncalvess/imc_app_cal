import 'package:flutter/material.dart';
import 'package:imc_app_cal/components/age_imput_widget.dart';
import 'package:imc_app_cal/components/card_info_imc.dart';
import 'package:imc_app_cal/components/state_imc_model_widget.dart';
import 'package:imc_app_cal/components/tougle_gender_widget.dart';
import 'package:imc_app_cal/pages/home_view_model.dart';

import '../../components/drop_measures_widget.dart';
import '../../src/enum_state_imc.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            children: [
              Container(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Calculadora de IMC",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.sizeOf(context).width * 0.07),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.list_alt_rounded,
                                  color: Colors.white,
                                  size:
                                      MediaQuery.of(context).size.width * 0.08,
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DropMeasuresWidget(
                              measures: tamanho,
                              controller: heith,
                            ),
                            DropMeasuresWidget(
                              measures: pesos,
                              controller: width,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TougleGenderWidget(
                              icons: gendertype,
                              togleSelect: togleSelect,
                            ),
                            AgeImputWidget(controller: age)
                          ],
                        )
                      ],
                    ),
                  )),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.6,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    CardInfoImc(imcDif: "0",imcvalue: resulImc),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.35,
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        children: Stateimac.values.map((Stateimac type) => StateImcModelWidget(statusimc: type.status, minvalue: type.minvalue.toString(), maxvalue: type.maxvalue.toString(), statuscolor: type.color,)).toList() ,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)))),
                      onPressed: () {
                        if (width.text != "" && heith.text != "") {
                          setStateImc(width: double.parse(width.text), heith: double.parse(heith.text));
                        }
                      },
                      child: const Text(
                        "Calcular IMC",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
