
class Person {
 final String name;
 final double age;
 final double width;
 final  double heith;
 double? imc;
  Person({
    required this.name,
    required this.age,
    required this.width,
    required this.heith,
    required this.imc,
  });

double calcIMC({required double width, required  double heith }) {
  return width/ (heith * heith);
}

}
