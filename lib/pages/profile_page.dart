// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_pets_app/widgets/Posts_tab.dart';
import 'package:flutter_pets_app/widgets/likes_tab.dart';
import 'package:flutter_pets_app/widgets/saved_tab.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('PETS',
                      style: TextStyle(
                      color: Color.fromARGB(255, 240, 88, 0),
                      fontWeight: FontWeight.normal,
                      fontSize: 35,
                      ),
          ),
          backgroundColor: Colors.transparent,
          leading: Container(
            padding: EdgeInsets.all(10),
            child: IconButton(icon: Icon(Icons.pets), 
            onPressed: () {  },
            color: Color.fromARGB(255, 240, 88, 0),
            
            ),),
          elevation: 0.0,
          actions: [
            Container(
            padding: EdgeInsets.all(10),
             child: IconButton(icon: Icon(Icons.medical_services),
              onPressed: () {  },
              color: Color.fromARGB(255, 240, 88, 0),
              ),
            ),
             ],
        ),
        // ignore: prefer_const_constructors
        body: Column(
          children: [
            //profile photo
            
            Container( 
            height: 120,  
            width: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
    
            ),
            
             //username
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Text('Vanessa Mayama',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
               ),
             ),
             
             //bio
              Text('Bio title',
              style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 10),
             
             //posts,lost,found
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(children: [
                     Text ('0', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold, fontSize: 20),),
                    Text('Posts', style: TextStyle(color: Colors.black, 
                      fontWeight: FontWeight.normal, fontSize: 15),),
                    ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(children: [
                     Text ('0', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold, fontSize: 20),),
                    Text('Lost', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.normal, fontSize: 15),),
                    ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(children: [
                     Text ('0', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold, fontSize: 20),),
                    Text('Found', style: TextStyle(color: Colors.black,
                     fontWeight: FontWeight.normal, fontSize: 15),),
                    ],
                    ),
                  ),
                ),
              ],
              ),
              SizedBox(height: 10),
             
             //buttons
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: 
                    Text('Edit Profile', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold, fontSize: 20),),
                      decoration: 
                      BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(50)
                        ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: 
                    Text('Message', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold, fontSize: 20),),
                      decoration: 
                      BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(50)
                        ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: 
                    Text('Contact', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold, fontSize: 20),),
                      decoration: 
                      BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(50)
                        ),
                  ),
                ],
             ),
             SizedBox(height: 10),
    
             //tab controller
             TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.apps, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.favorite, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.bookmark_border, color: Colors.black),
                ),
              ]
             ),

             Expanded(
               child: TabBarView(
                children: [
                 FirstTab(),
                 SecondTab(),
                 ThirdTab(),
               ],
                ),
             ),
             
             ],
             ),
          ),
      );
  }
}