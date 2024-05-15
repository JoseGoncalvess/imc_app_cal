import 'package:flutter/material.dart';

class CardInfoImc extends StatefulWidget {
  const CardInfoImc({super.key, required this.imcvalue, required this.imcDif, required this.noticestate, required this.imccolor,});
final String imcvalue;
final String imcDif;
final String noticestate; 
final Color imccolor;
  @override
  State<CardInfoImc> createState() => _CardInfoImcState();
}

class _CardInfoImcState extends State<CardInfoImc> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                "${widget.noticestate} ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.07),
              ),
              Text(widget.imcDif == "0.0" ?"": "${widget.imcDif} kg",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: widget.imccolor,
                      fontSize: MediaQuery.of(context).size.width * 0.07))
            ],
          ),
        ],
      ),
    );
  }
}
