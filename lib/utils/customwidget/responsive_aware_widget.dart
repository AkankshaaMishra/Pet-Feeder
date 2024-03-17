import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveAwareWidget extends StatelessWidget {
  Widget dekstop;
  Widget tablet;
  Widget mobile;
  ResponsiveAwareWidget(
      {required this.dekstop, required this.tablet, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return dekstop;
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return dekstop;
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return dekstop;
        }

        return Container();
      },
    );
  }
}
