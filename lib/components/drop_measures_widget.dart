import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_app_cal/helpers/imput%20formaters/height_imput_formaters.dart';

class DropMeasuresWidget extends StatefulWidget {
  final List<String> measures;
  final TextEditingController controller;
  final Color colortype;
  const DropMeasuresWidget(
      {super.key,
      required this.measures,
      required this.controller,
      required this.colortype});

  @override
  State<DropMeasuresWidget> createState() => _DropMeasuresWidgetState();
}

class _DropMeasuresWidgetState extends State<DropMeasuresWidget> {
  late String dropDowValue;
  @override
  void initState() {
    super.initState();
    dropDowValue = widget.measures.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.06,
      width: MediaQuery.sizeOf(context).width * 0.4,
      decoration: BoxDecoration(
          color: widget.colortype,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
            width: MediaQuery.sizeOf(context).width * 0.22,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: TextField(
                inputFormatters: [LengthLimitingTextInputFormatter(4),HeightImputFormatersextends()],
                controller: widget.controller,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                maxLines: 1,
                decoration: const InputDecoration(border: InputBorder.none),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          DropdownButton(
            value: dropDowValue,
            elevation: 2,
            dropdownColor: widget.colortype,
            isDense: true,
            items: widget.measures
                .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem(
                          value: value,
                          child: Text(value,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.03,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white)),
                        ))
                .toList(),
            onChanged: (value) {
              setState(() {
                dropDowValue = value!;
              });
            },
          )
        ],
      ),
    );
  }
}
