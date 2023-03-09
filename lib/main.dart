//import 'dart:js';
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, unnecessary_this, must_be_immutable, prefer_equal_for_default_values
//import 'package:flutter_pets_app/pages/profile_page.dart';
//import 'package:flutter_pets_app/pages/splash_page.dart';
//import 'package:flutter_pets_app/pages/welcome_page.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pets_app/pages/found_page.dart';
import 'package:flutter_pets_app/pages/lost_page.dart';
//import 'package:flutter_pets_app/pages/proprofile_page.dart';
//import 'package:flutter_pets_app/pages/visitorprofile_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData( fontFamily: 'Quicksand'),
    debugShowCheckedModeBanner: false,
    home: FoundPage(),//LostPage(),//ProProfilePage(), //SplashPage(duration: 3, goToPage: WelcomePage()),
  ));
}




  