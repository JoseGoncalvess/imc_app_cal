import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imc_app_cal/components/age_imput_widget.dart';
import 'package:imc_app_cal/components/card_info_imc.dart';
import 'package:imc_app_cal/components/custom_butoom.dart';
import 'package:imc_app_cal/components/state_imc_model_widget.dart';
import 'package:imc_app_cal/components/tougle_gender_widget.dart';
import 'package:imc_app_cal/pages/home_view_model.dart';
import '../../components/drop_measures_widget.dart';
import '../../src/enum_state_calc.dart';
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
                  decoration: BoxDecoration(
                      color: imcprimaryColor,
                      borderRadius: const BorderRadius.only(
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
                                onPressed: () {
                                  reflashState();
                                },
                                icon: Icon(
                                  resulImc != ""
                                      ? Icons.refresh
                                      : Icons.list_alt_rounded,
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
                              colortype: imcsecundaryColor,
                              measures: tamanho,
                              controller: heith,
                            ),
                            DropMeasuresWidget(
                              colortype: imcsecundaryColor,
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
                              primary: imcprimaryColor,
                              secundary: imcsecundaryColor,
                              icons: gendertype,
                              togleSelect: togleSelect,
                            ),
                            AgeImputWidget(
                              controller: age,
                              secundarycolor: imcsecundaryColor,
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              AnimatedSize(
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: iscalculated
                    ? FutureBuilder(
                        future: Future.delayed(Duration(microseconds: 1)),
                        builder: (context, _) {

                          switch (stateload) {
                            case Satecalc.await:
                              return SizedBox(
                                height: MediaQuery.sizeOf(context).height * 0.4,
                              );
                            case Satecalc.loading:
                              return SizedBox(
                                height: MediaQuery.sizeOf(context).height * 0.4,
                                width: MediaQuery.sizeOf(context).width,
                                child: Center(child: CircularProgressIndicator(
                                  color: imcprimaryColor,
                                )),
                              );
                            case Satecalc.finishin:
                              return Column(
                                children: [
                                  CardInfoImc(
                                    imcDif: diflImc,
                                    imcvalue: resulImc,
                                    noticestate: noticelImc,
                                    imccolor: imcprimaryColor,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.35,
                                    width: MediaQuery.sizeOf(context).width,
                                    child: Column(
                                        children: EnumStateimac.values
                                            .map((EnumStateimac type) =>
                                                StateImcModelWidget(
                                                  statusimc: type.status,
                                                  minvalue:
                                                      type.minvalue.toString(),
                                                  maxvalue:
                                                      type.maxvalue.toString(),
                                                  statuscolor: type.primary,
                                                  isselect:
                                                      type.status == stateImc,
                                                ))
                                            .toList()),
                                  )
                                ],
                              );
                          }
                        },
                      )
                    : SizedBox(height: MediaQuery.sizeOf(context).height * 0.4),
              ),
              CustomButoom(
                  ontap: () {
                    calcimc();
                  },
                  backgroundColor: imcprimaryColor)
            ],
          ),
        ),
      ),
    );
  }
}
