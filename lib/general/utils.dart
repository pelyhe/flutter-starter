import 'package:flutter/cupertino.dart';
import 'package:formula/general/fonts.dart';

Widget ScaffoldBody(
    {required BuildContext context,
    Widget? mobileBody,
    Widget? tabletBody,
    Widget? desktopBody}) {
  AppFontSize.refresh(context);

  if (AppFontSize.isMobile) {
    return mobileBody ?? const SizedBox();
  } else if (AppFontSize.isTablet) {
    return tabletBody ?? const SizedBox();
  } else {
    return desktopBody ?? const SizedBox();
  }
}
