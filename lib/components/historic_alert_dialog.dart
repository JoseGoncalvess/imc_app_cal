import 'package:flutter/material.dart';
import 'package:imc_app_cal/components/custom_butoom.dart';

class HistoricAlertDialog extends StatelessWidget {
  final Function() ontap;

  const HistoricAlertDialog({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Text(
        textAlign: TextAlign.center,
        "Excluir os Historicos Selecionados ?",
        style: TextStyle(
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.width * 0.06,
            fontWeight: FontWeight.bold),
      ),
      actions: [
        CustomButoom(
            ontap: () {
              ontap();
              Navigator.pop(context);
            },
            backgroundColor: Colors.green,
            actiontext: "Sim",
            textColor: Colors.white),
        CustomButoom(
            ontap: () => Navigator.pop(context),
            backgroundColor: Colors.red,
            actiontext: "Não",
            textColor: Colors.white)
      ],
    );
  }
}
