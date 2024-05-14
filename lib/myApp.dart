import 'package:flutter/material.dart';
import 'package:imc_app_cal/pages/home/home.dart';

class MyApp extends StatelessWidget {

  const MyApp({ super.key });

   @override
   Widget build(BuildContext context) {
       return MaterialApp(
        title: "App IMC",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true
        ),
        home:const Home() ,
       );
  }
}