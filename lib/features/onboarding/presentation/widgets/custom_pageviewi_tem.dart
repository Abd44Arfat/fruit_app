// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fruit_app/core/utlis/size_config.dart';

import '../../../../core/consrants.dart';

class page_view_item extends StatelessWidget {
  const page_view_item({
    Key? key,
    this.title,
    this.subtitle,
    this.image,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    var myfont;
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.defaultSize! * 7,
        ),
        SizedBox(height: 330, child: Image.asset(image!)),
        SizedBox(
          height: SizeConfig.defaultSize! * 0.2,
        ),
        Text(
          title!,
          style: TextStyle(fontSize: 30, color: kmaincolor,fontFamily: myfont,fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: SizeConfig.defaultSize! * 0.5,
        ),
        Text(
          subtitle!,
          style: TextStyle(fontSize: 15, color: kmaincolor),
        )
      ],
    );
  }
}
