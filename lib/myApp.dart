import 'package:flutter/material.dart';
import 'pages/splash page/spash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App IMC",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFACB3E), primary: const Color(0xFFFACB3E)),
          useMaterial3: true),
      home: const Splash(),
    );
  }
}
