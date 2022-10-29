//import 'dart:js';
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, unnecessary_this, must_be_immutable, prefer_equal_for_default_values
import 'package:flutter_pets_app/pages/splash_page.dart';
import 'package:flutter_pets_app/pages/welcome_page.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 3, goToPage: WelcomePage()),
  ));
}




  