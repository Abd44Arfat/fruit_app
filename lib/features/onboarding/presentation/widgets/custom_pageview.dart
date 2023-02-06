// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'custom_pageviewi_tem.dart';

class custom_PageView extends StatelessWidget {
  const custom_PageView({
    Key? key,@required
    this.pageController,
  }) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        page_view_item(
          image: 'assets/images/Supermarket workers-pana (1).png',
          title: 'E shopping',
          subtitle: 'Explore top organic fruits & grab them',
        ),
        page_view_item(
          image: 'assets/images/Delivery address-pana.png',
          title: 'Delivery on the day',
          subtitle: 'Get your order by speed delivery',
        ),
        page_view_item(
          image: 'assets/images/In no time-cuate.png',
          title: 'Delivery Arrived',
          subtitle: 'Order is arrived at your place',
        ),
      ],
    );
  }
}
