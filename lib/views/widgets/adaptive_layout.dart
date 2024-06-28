import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout;
  final WidgetBuilder tabletLayout;
  final WidgetBuilder desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < 900) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}

// ScaleFactor
// Responsive Font Size
//(min, max) font Size

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double ScaleFactor = getScaleFactor(context);
  double ResponsiveFontSize = fontSize * ScaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return ResponsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
