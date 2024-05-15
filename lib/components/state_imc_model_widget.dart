import 'package:flutter/material.dart';

class StateImcModelWidget extends StatelessWidget {
  const StateImcModelWidget(
      {super.key,
      required this.statusimc,
      required this.minvalue,
      required this.maxvalue, required this.statuscolor, required this.isselect});
  final String statusimc;
  final String minvalue;
  final String maxvalue;
  final Color statuscolor;
  final bool isselect;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(seconds: 1),
      curve: Curves.decelerate,
      opacity: isselect?1:0.2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.circle,
            color: statuscolor,
            size: MediaQuery.of(context).size.width * 0.05,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.84,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    statusimc,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                  ),
                ),
                Text(
                  statusimc == "Obesidade Morbida"
                      ? minvalue
                      : "$minvalue -$maxvalue",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
