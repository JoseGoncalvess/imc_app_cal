import 'package:flutter/material.dart';
import 'package:imc_app_cal/components/custom_historic_list.dart';
import 'package:imc_app_cal/components/historic_alert_dialog.dart';
import 'historic_calc_view_model.dart';

class HistoricCalcView extends HistoricCalcViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          isempyt?
          const SizedBox():IconButton(
              onPressed: () => setState(() {
                    visibility = !visibility;
                  }),
              icon: Icon(
                visibility ? Icons.check_box_outlined : Icons.check_box_rounded,
                color: Colors.white,
              ))
        ],
        title: const Text(
          "Historico de Cálculo",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: CustomHistoricList(
              isvisible: visibility,
              list: historic,
              ontap: (historic, isSelect) => isSelect
                  ? historictemp.add(historic)
                  : historictemp.remove(historic))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(
          Icons.delete_forever_rounded,
          color: Colors.white,
        ),
        onPressed: () {
         isempyt?(){}: showDialog(
            context: context,
            builder: (context) => HistoricAlertDialog(ontap:() => deletmuchhistoric(historictemp) ),
          );
          ;
        },
      ),
    );
  }
}
