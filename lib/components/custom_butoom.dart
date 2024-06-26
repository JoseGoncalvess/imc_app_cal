import 'package:flutter/material.dart';

class CustomButoom extends StatelessWidget {
  final Function() ontap;
  final Color backgroundColor;
  final Color textColor;
  final String actiontext;
   const CustomButoom(
      {super.key, required this.ontap, required this.backgroundColor, required this.actiontext, required this.textColor,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.08,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(backgroundColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)))),
            onPressed: () {
              ontap();
            },
            child:  Text(
             actiontext,
              style:
                   TextStyle(color: textColor, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
