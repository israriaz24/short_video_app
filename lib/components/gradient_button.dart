import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:getwidget/getwidget.dart';
import '../constants/colors.dart';

class GradientButton1 extends StatelessWidget {
  GradientButton1(
      {Key? key,
      required this.context,
      required this.onPress,
      required this.btnText,
      required this.rHeight,
      required this.rWidth})
      : super(key: key);
  BuildContext context;
  double rWidth;
  double rHeight;
  String btnText;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double ratio = MediaQuery.of(context).size.aspectRatio;

    return Container(
      width: width * (rWidth / 100),
      height: height * (rHeight / 100),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        gradient: LinearGradient(
          colors: [AppColors.primaryLight, AppColors.primary],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(btnText,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: width * 0.045,
              color: AppColors.background,
            )),
      ),
    );
  }
}

class OutlineButton1 extends StatelessWidget {
  OutlineButton1({
    Key? key,
    required this.context,
    required this.onPress,
    required this.btnText,
  }) : super(key: key);
  BuildContext context;

  String btnText;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GFButton(
      fullWidthButton: true,
      type: GFButtonType.outline,
      color: AppColors.primary,
      onPressed: onPress,
      splashColor: AppColors.primaryFade.withAlpha(55),
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      buttonBoxShadow: false,
      child: Text(
        btnText,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
