//import 'dart:js';
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, unnecessary_this, must_be_immutable, prefer_equal_for_default_values
import 'package:flutter_pets_app/pages/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 3, goToPage: WelcomePage()),
  ));
}

class SplashPage extends StatelessWidget {
    int duration = 0;
    Widget goToPage;

    SplashPage({ required this.goToPage, required this.duration });
 
  @override
  Widget build(BuildContext context) {
      Future.delayed(Duration(seconds: this.duration), () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => this.goToPage) 
        );
      });

    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 240, 88, 0),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle, 
              color: Colors.transparent,
              border: Border.all(
                color: Colors.white,
                width: 3,
                ),
            ),
             width: 200,
             height: 200,
            child: Center(
              child: Text(
                "PETS.",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 70,
                 ),
               ) ),
          ),
          ),
      )
    );
  }

}


  