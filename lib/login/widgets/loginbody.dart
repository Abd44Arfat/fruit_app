import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:fruit_app/core/consrants.dart';

import '../../core/utlis/size_config.dart';
import '../../core/widgets/custom_bottoms.dart';
import '../../features/Auth/presentation/page/completeinformation/coplete_information_view.dart';

class Loginpagebody extends StatelessWidget {
  const Loginpagebody({super.key});

  @override
  Widget build(BuildContext context) {
 return  Column(
      children: [
  SizedBox(height: 30,),
        SizedBox(
          child: Image.asset(klogin),
          height: SizeConfig.defaultSize! * 30,
        ),
        Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color:kmaincolor,
            ),
            children: [
              TextSpan(
                text: 'F',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'ruit Market',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  color: Color.fromARGB(255, 167, 28, 28),
                  iconData: FontAwesomeIcons.google,
                  
                  text: '  Log in with ',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(() => completeinformatonview(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  color: Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebookF,
                  
                  text: '  Log in with ',
                ),
              ),
            )
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}

    
