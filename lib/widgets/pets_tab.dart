// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: 6,
      //gridDelegate: 
      //SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 100,
              color: Color.fromARGB(255, 226, 226, 226)),
          ),
        );
      });
    
  }
}