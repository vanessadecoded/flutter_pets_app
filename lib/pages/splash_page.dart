// ignore_for_file: unnecessary_this, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

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