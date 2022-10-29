//import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {

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
          child: Image.asset('assets/images/login.jpg',
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
                "SIGN IN.",
                style: GoogleFonts.quicksand(
                  color: Color.fromARGB(255, 240, 88, 0),
                  fontSize: 35,
                 ),
               ) ),
          ),
          ), ),
          
          SizedBox(height: 30),
          Text('To The',
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text('Fur.mily',
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              )
              ),
          
          //email textfield
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Color.fromARGB(255, 240, 88, 0),
                  width: 3,
                  ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:20),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: GoogleFonts.quicksand(
                      color: Colors.white
                    )
                    ),
                ),
                ),
             ),
            ),

            //password textfield
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Color.fromARGB(255, 240, 88, 0),
                  width: 3,
                  ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: GoogleFonts.quicksand(
                      color: Colors.white
                    )
                    ),
                ),
                ),
             ),
            ),

            //sign in button
            SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 27, bottom: 20),
                child: FloatingActionButton(
                  onPressed: () { 
                    
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  backgroundColor: Color.fromARGB(255, 240, 88, 0),
                   child: Text('Sign In',
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                    ), ),
                  ),
                ),

                //not a member?
                //SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?',
                   style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                   ),
                    ),
                    Text(' Register now',
                    style: GoogleFonts.quicksand(
                      color: Color.fromARGB(255, 240, 88, 0),
                      fontWeight: FontWeight.bold,
                    ),
                    )
                  ],
                )
          ]
          ),)
          ],),
          ),
          );
}
}