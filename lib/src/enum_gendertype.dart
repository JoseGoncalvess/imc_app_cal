import 'package:flutter/material.dart';

enum EnumGendertype {
  man(name: 'HOMEM', gendericon: Icon(Icons.man_2_rounded)),
  woman(name: "MULHER", gendericon: Icon(Icons.woman_2_rounded));

  final String name;
  final Icon gendericon;
  const EnumGendertype({required this.name, required this.gendericon});
}
