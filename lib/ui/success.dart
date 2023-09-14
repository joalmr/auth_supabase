import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Bienvenido",
                style: TextStyle(fontSize: 22),
              ),
              Lottie.asset(
                "assets/buscando.json",
                height: 140,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
