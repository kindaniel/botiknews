import 'package:botiknews/components/decoration_container.dart';
import 'package:botiknews/components/post_card.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecorationContainer(),
        PostCard(),
      ],
    );
  }
}
