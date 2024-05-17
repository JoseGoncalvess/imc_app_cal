import 'package:flutter/material.dart';

class TougleGenderWidget extends StatefulWidget {
  const TougleGenderWidget({super.key, required this.togleSelect, required this.icons, required this.primary, required this.secundary, required this.ontap});
  final List<bool> togleSelect;
  final List<Widget> icons;
  final Color primary;
  final Color secundary;
  final Function({required String gendertype}) ontap;

  @override
  State<TougleGenderWidget> createState() => _TougleGenderWidgetState();
}

class _TougleGenderWidgetState extends State<TougleGenderWidget> {
  
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      onPressed: (int index) {
        for (var i = 0; i < widget.togleSelect.length; i++) {
          setState(() {
            widget.togleSelect[i] = (i == index);
          });
        }
       widget.ontap(gendertype: index==0?"MALE":"FEMALE");
      },
      direction: Axis.horizontal,
      isSelected: widget.togleSelect,
      constraints: BoxConstraints(
        minHeight: MediaQuery.sizeOf(context).height * 0.06,
        minWidth: MediaQuery.sizeOf(context).width * 0.195,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      fillColor: Colors.white,
      borderColor: Colors.white,
      splashColor: widget.primary,
      selectedBorderColor: Colors.white,
      selectedColor: widget.secundary,
      color: Colors.white60,
      children: widget.icons,
    );
  }
}
