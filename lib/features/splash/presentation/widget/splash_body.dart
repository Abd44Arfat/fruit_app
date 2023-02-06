// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../../core/utlis/size_config.dart';
import '../../../onboarding/presentation/onboardingview.dart';

class splashbody extends StatefulWidget {
  const splashbody({super.key});

  @override
  State<splashbody> createState() => _splashbodyState();
}

class _splashbodyState extends State<splashbody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    gotoNextview();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
      SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
        SizedBox(height: 100,),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              "Fruit Market",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(
            "assets/images/Farmers market-amico.png",
          )
        ],
      ),
    );
  }
}

void gotoNextview() {
  Future.delayed(Duration(seconds: 3), () {
    Get.to(() => oOnBoardingview(),transition: Transition.leftToRight);
  });
}
