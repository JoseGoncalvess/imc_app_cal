import 'package:flutter/material.dart';
import 'package:imc_app_cal/helpers/month_name.dart';

import '../models/historic_model.dart';

class CustomHistoricList extends StatefulWidget {
  const CustomHistoricList({super.key, required this.list,});
 final  List<HistoricModel> list;

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
              gradient: LinearGradient(colors: [Colors.redAccent ,Colors.green]),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 1)
              ]),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.34,
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
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.48,
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
                    Text(MonthName().fomaterData(widget.list[index].date),
                     
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit_document,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
