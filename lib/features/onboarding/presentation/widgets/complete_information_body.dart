import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../core/widgets/custom_bottoms.dart';
import 'complete_information_item.dart';

class complete_information_body extends StatelessWidget {
  const complete_information_body({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
        SizedBox(height: 100,),
          CompleteInfoItem(
            text: 'Enter your name',
          ),
         SizedBox(height: 30,),
          CompleteInfoItem(
            text: 'Enter your phone number',
          ),
          SizedBox(height: 30,),
          CompleteInfoItem(
            maxLines: 5,
            text: 'Enter your address',
          ),
          SizedBox(height: 180,),
          custom_general_Buttom(
            text: 'Login',
          )
        ],
      ),
    );
  }
}

