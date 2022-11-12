//import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {

@override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: Colors.black,
     child: Stack(
       children: [
        Positioned.fill(
          child: Opacity(
            opacity: 0.6,
          child: Image.asset('assets/images/register.jpg',
          fit: BoxFit.cover),
          ),
          ),
          Center(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              reverse: true,
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
                  "SIGN UP.",
                  style: GoogleFonts.quicksand(
                    color: Color.fromARGB(255, 240, 88, 0),
                    fontSize: 35,
                   ),
                 ) ),
                      ),
                      ), ),
                      
                      SizedBox(height: 30),
                      Text('Join The',
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
                    style: GoogleFonts.quicksand( 
                        color: Colors.white
                      ),
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
                    style: GoogleFonts.quicksand( 
                        color: Colors.white
                      ),
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
            
              //confirm password
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
                    style: GoogleFonts.quicksand( 
                        color: Colors.white
                      ),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirm Password',
                      hintStyle: GoogleFonts.quicksand(
                        color: Colors.white
                      )
                      ),
                  ),
                  ),
               ),
              ),
              
              //sign up button
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
                     child: Text('Sign Up',
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                      ), ),
                    ),
                  ),
            
                  //not a member?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already a member?',
                     style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                     ),
                      ),
                      Text(' Login now',
                      style: GoogleFonts.quicksand(
                        color: Color.fromARGB(255, 240, 88, 0),
                        fontWeight: FontWeight.bold,
                      ),
                      )
                    ],
                  )
                      ]
                      ),
            ),)
          ],),
          ),
          );
}
}