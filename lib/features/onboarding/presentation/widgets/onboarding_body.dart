import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fruit_app/core/consrants.dart';
import 'package:get/get.dart';

import '../../../../core/utlis/size_config.dart';
import '../../../../core/widgets/custom_bottoms.dart';
import '../../../../login/widgets/login_view.dart';
import 'custom_indicator.dart';
import 'custom_pageview.dart';

class onboarding_body extends StatefulWidget {
  const onboarding_body({super.key});

  @override
  State<onboarding_body> createState() => _onboarding_bodyState();
}

class _onboarding_bodyState extends State<onboarding_body> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        custom_PageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 19,
          child: customindecator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 7,
            right: 32,
            child: Text(
              "Skip",
              
              style: TextStyle(
                fontSize: 19,
                color: Color.fromARGB(255, 2, 116, 192),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: custom_general_Buttom(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController!.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() => Loginpage(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 500));
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get started' : 'Next')
                  : 'Next',
            )),
      ],
    );
  }
}
