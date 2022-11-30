// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return GridView.builder(
      itemCount: 6,
      gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            color: Color.fromARGB(255, 226, 226, 226)),
        );
      });
    
  }
}