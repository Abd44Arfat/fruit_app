import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fruit_app/features/splash/presentation/widget/splash_body.dart';

import '../../../core/consrants.dart';

class splash_view extends StatelessWidget {
  const splash_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
backgroundColor: kmaincolor,
      body: splashbody(),
    );
  }
}