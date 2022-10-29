// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

import 'package:flutter_pets_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      color: Colors.black,
     child: Stack(
       children: [
        Positioned.fill(
          child: Opacity(
            opacity: 0.3,
          child: Image.asset('assets/images/landing.jpg',
          fit: BoxFit.cover),
          ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               Center( 
                child: Padding(
                 padding: const EdgeInsets.all(15),
                 child: Container(
                 decoration: BoxDecoration(
                 shape: BoxShape.circle, 
                 color: Colors.transparent,
                 border: Border.all(
                 color: Color.fromARGB(255, 240, 88, 0),
                 width: 3,
                ),
            ),
             width: 150,
             height: 150,
            child: Center(
              child: Text(
                "PETS.",
                style: GoogleFonts.quicksand(
                  color: Color.fromARGB(255, 240, 88, 0),
                  fontSize: 55,
                 ),
               ) ),
          ),
          ), ),
              SizedBox(height: 30),
              Text('Welcome',
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold
              )
              ),
              Text('Helping You \nFind a Furry Friend',
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                child: FloatingActionButton(
                  onPressed: () { 
                    
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  backgroundColor: Color.fromARGB(255, 240, 88, 0),
                   child: Text('SIGN IN',
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                    ), ),
                  ),
                ),
     
              Container(
                margin: EdgeInsets.only(left: 25, right: 25, bottom: 20),
                child: ClipRRect(borderRadius: BorderRadius.circular(50),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Color.fromARGB(255, 240, 88, 0).withOpacity(0.2),
                  highlightColor: Color.fromARGB(255, 240, 88, 0).withOpacity(0.2),
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                        ),
                    );
                  },
               child: Container(
                padding: EdgeInsets.all(8),
                child: Text('SIGN UP',
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                 fontSize: 25,
                 color: Colors.white,
                 fontWeight: FontWeight.bold 
                ),
                ),
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(50),
                 color: Colors.transparent,
                 border: Border.all(
                  color: Color.fromARGB(255, 240, 88, 0),
                  width: 3,
                 )
                ),
               ),
            ),
          ),
                ),
              ),
              
              ],
              ),
          )
       ],
     ),
     ),
    );
  }
  
}