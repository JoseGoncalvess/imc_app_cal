import 'package:flutter/material.dart';

class CardInfoImc extends StatefulWidget {
  const CardInfoImc({super.key, required this.imcvalue, required this.imcDif,});
final String imcvalue;
final String imcDif;
  @override
  State<CardInfoImc> createState() => _CardInfoImcState();
}

class _CardInfoImcState extends State<CardInfoImc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.25,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Seu IMC é ...",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * 0.04),
          ),
          Text(
           widget.imcvalue,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.18),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Abaixo do Peso: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.07),
              ),
              Text("-4.5 kg",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: MediaQuery.of(context).size.width * 0.07))
            ],
          ),
        ],
      ),
    );
  }
}
