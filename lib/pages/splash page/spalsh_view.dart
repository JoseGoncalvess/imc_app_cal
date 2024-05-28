import 'package:flutter/material.dart';
import 'package:imc_app_cal/pages/splash%20page/splash_view_model.dart';

class SpalshView extends SplashViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          onEnd: () => goPage(context),
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
          child: Image.asset("assets/logo.png")),
      ),
    );
  }
}
