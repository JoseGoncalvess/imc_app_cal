import 'package:flutter/cupertino.dart';
import 'package:imc_app_cal/pages/splash%20page/spash.dart';

import '../home/home.dart';

abstract class SplashViewModel extends State<Splash> {
  double opacity = 1;
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1)).then((value) => {
          setState(() => opacity = 0),
        });
  }
}

void goPage(BuildContext context) {
  Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, _, __) => const Home(),
        transitionDuration: const Duration(seconds: 2),
        transitionsBuilder: (context, animation, _, child) {
          var tween = Tween(begin: const Offset(0, 1), end: Offset.zero)
              .chain(CurveTween(curve: Curves.ease));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ));
}
