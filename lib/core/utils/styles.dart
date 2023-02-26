import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static var title = GoogleFonts.roboto(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static var description = GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: const Color(0xff121212));
  static var textbutton = GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);
  static var result = GoogleFonts.inter(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: const Color(0xff00FF00));
}
