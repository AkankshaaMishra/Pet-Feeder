import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_feeder/utils/customwidget/responsive_aware_widget.dart';
import 'package:pet_feeder/utils/themes/app_color.dart';
import 'package:pet_feeder/views/HomePage/designs/home_desktop.dart';
import 'package:pet_feeder/views/HomePage/designs/home_mobile.dart';
import 'package:pet_feeder/views/HomePage/designs/home_tablet.dart';

class PetHomePage extends StatelessWidget {
  const PetHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: ResponsiveAwareWidget(
            dekstop: HomeDekstop(),
            tablet: HomeTablet(),
            mobile: HomeMobile()));
  }
}
