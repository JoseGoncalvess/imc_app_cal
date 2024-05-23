import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imc_app_cal/components/custom_historic_select.dart';
import 'package:imc_app_cal/helpers/month_name.dart';

import '../models/historic_model.dart';

class CustomHistoricList extends StatefulWidget {
  const CustomHistoricList({
    super.key,
    required this.list,
    required this.ontap,
    required this.isvisible,
  });
  final List<HistoricModel> list;
  final Function(HistoricModel historic, bool isSelect) ontap;
  final bool isvisible;

  @override
  State<CustomHistoricList> createState() => _CustomHistoricListState();
}

class _CustomHistoricListState extends State<CustomHistoricList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.15,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                widget.list[index].primarycolorsstate,
                widget.list[index].secundarycolorsstate
              ]),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 1)
              ]),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.36,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.list[index].imc.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.1,
                          color: Colors.white),
                    ),
                    Text(
                      widget.list[index].statusimc,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.46,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Resultado do ${widget.list[index].name}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          color: Colors.white),
                    ),
                    Text(
                      MonthName().fomaterData(widget.list[index].date),
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Visibility(
                  visible: widget.isvisible,
                  child: CustomHistoricSelect(
                    ontap: ({required select}) {
                      widget.ontap(widget.list[index], select);
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
