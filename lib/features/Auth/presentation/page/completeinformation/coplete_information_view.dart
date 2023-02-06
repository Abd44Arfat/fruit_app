import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../onboarding/presentation/widgets/complete_information_body.dart';

class completeinformatonview extends StatelessWidget {
  const completeinformatonview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: complete_information_body(),
    );
  }
}