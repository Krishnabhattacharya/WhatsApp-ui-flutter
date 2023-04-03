import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class responsiveLayout extends StatelessWidget {
  final mobileScreenLayout;
  final webScreenLayout;
  const responsiveLayout(
      {super.key, this.mobileScreenLayout, this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        //for web
        return webScreenLayout;
      } else {
        //mobile
        return mobileScreenLayout;
      }
    });
  }
}
