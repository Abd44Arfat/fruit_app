import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fruit_app/features/onboarding/presentation/widgets/onboarding_body.dart';

class oOnBoardingview extends StatelessWidget {
  const oOnBoardingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: onboarding_body(),
    );
  }
}