import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AgeImputWidget extends StatefulWidget {
  final TextEditingController controller;
  final Color secundarycolor;

  const AgeImputWidget({super.key, required this.controller, required this.secundarycolor});

  @override
  State<AgeImputWidget> createState() => _AgeImputWidgetState();
}

class _AgeImputWidgetState extends State<AgeImputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.06,
      width: MediaQuery.sizeOf(context).width * 0.4,
      decoration:  BoxDecoration(
          color: widget.secundarycolor,
          borderRadius: const BorderRadius.all(const Radius.circular(20))),
      child: TextField(
        inputFormatters: [LengthLimitingTextInputFormatter(2),
        ],
        onChanged: (value) {
          setState(() {
            widget.controller.text = value;
          });
        },
        controller: widget.controller,
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        maxLines: 1,
        decoration: InputDecoration(
            hintText: "Idade",
            hintStyle: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            border: InputBorder.none),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
