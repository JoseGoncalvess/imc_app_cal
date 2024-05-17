import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_app_cal/components/custom_butoom.dart';

class CustomBotooshet extends StatefulWidget {
  final Color textcolor;
  final TextEditingController controller;
  final Function() ontap;

  const CustomBotooshet({
    super.key,
    required this.textcolor, required this.controller, required this.ontap,
  });

  @override
  State<CustomBotooshet> createState() => _CustomBotooshetState();
}

class _CustomBotooshetState extends State<CustomBotooshet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "A quem pertence esse calculo ?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.white),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              height: MediaQuery.sizeOf(context).height * 0.07,
              width: MediaQuery.sizeOf(context).width * 0.8,
              child: TextField(
                inputFormatters: [LengthLimitingTextInputFormatter(12)],
                controller: widget.controller,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                maxLines: 1,
                decoration: const InputDecoration(border: InputBorder.none),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,
              ),
            ),
            CustomButoom(
                ontap: () => widget.ontap(),
                backgroundColor: Colors.white,
                textColor: widget.textcolor,
                actiontext: "Salvar Cálculo")
          ],
        ),
      ),
    );
  }
}
