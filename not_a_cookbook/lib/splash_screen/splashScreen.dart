import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:not_a_cookbook/screen/home_screen.dart';
import 'package:not_a_cookbook/nav_bar/nav_bar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  get splash => null;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset('lottie/cook_lotti.json'),
          ),
        ],
      ),
      nextScreen: const NavigationMenu(),
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 412,
      backgroundColor: Color.fromARGB(255, 175, 174, 122),
    );
  }
}
