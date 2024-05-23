import 'package:flutter/material.dart';

class CustomHistoricSelect extends StatefulWidget {
  const CustomHistoricSelect({super.key, required this.ontap});
  final Function({required bool select}) ontap;

  @override
  State<CustomHistoricSelect> createState() => _CustomHistoricSelectState();
}

class _CustomHistoricSelectState extends State<CustomHistoricSelect> {
  bool selectstate = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      side: const BorderSide(color: Colors.white, style: BorderStyle.solid),
      shape: const CircleBorder(),
      value: selectstate,
      onChanged: (value) {
        setState(() {
          selectstate = value!;
        });
        widget.ontap(select:value!);
      },
    );
  }
}
