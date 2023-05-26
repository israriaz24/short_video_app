import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';

TextStyle genericTextStyle(
    {double size = 14,
      FontWeight? fontWeight = FontWeight.w500,
      Color color = AppColors.text1}) {
  return GoogleFonts.poppins(
      color: color, fontWeight: fontWeight, fontSize: size);
}

TextStyle text({required double size, FontWeight? fontWeight}) {
  return GoogleFonts.poppins(
      color: AppColors.text2, fontWeight: fontWeight, fontSize: size);
}