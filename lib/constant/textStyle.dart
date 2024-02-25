import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextAppStyle{
  static TextStyle citynameStyle (){
    return GoogleFonts.lato(fontSize: 30,color: Colors.black87,fontWeight: FontWeight.w600);
  }
  static TextStyle update (){
    return GoogleFonts.lato(fontSize: 25 ,color: Colors.black87,fontWeight: FontWeight.w400);
  }
  static TextStyle temp (){
    return GoogleFonts.lato(fontSize: 16 ,color: Colors.black87,fontWeight: FontWeight.w500);
  }
  static TextStyle avaTemp (){
    return GoogleFonts.lato(fontSize: 24 ,color: Colors.black87,fontWeight: FontWeight.w600);
  }
  static TextStyle appText (){
    return GoogleFonts.lato(fontSize: 16 ,color: Colors.black87,fontWeight: FontWeight.w600);
  }
}