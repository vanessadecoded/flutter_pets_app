// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FoundPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: IconButton(icon: Icon(Icons.add_circle_outline), 
            onPressed: () {  },
            color: Color.fromARGB(255, 240, 88, 0),
            
            ),),
          elevation: 0.0,
          actions: [
            Container(
            padding: EdgeInsets.all(10),
             child: IconButton(icon: Icon(Icons.menu),
              onPressed: () => showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context, 
                builder: (context) => TopList(),
                ),
              color: Color.fromARGB(255, 240, 88, 0),
              ),
            ),
             ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 13),
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Text('Found',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            color: Color.fromARGB(255, 240, 88, 0),
                            fontWeight: FontWeight.bold 
                          ),
                          ),
                        ),
                      ),
                     
                      Expanded(
                        child: Container(
                          child: IconButton(icon: Icon(Icons.tune_rounded), 
                                onPressed: () {  },
                                alignment: Alignment.centerRight,
                                color: Color.fromARGB(255, 240, 88, 0),
                                ),
                        ),
                      ),
                    ],),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 30,
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

              }),
              ),  
            ]),
        ),

    );
  }
}



Widget dragHandle() => Center(
      child: Container(
        width: 50,
        height: 5,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 240, 88, 0),
          borderRadius: BorderRadius.circular(20),
          ),
      ),
    );

class TopList extends StatelessWidget {
  const TopList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
     initialChildSize: 0.7,
     minChildSize: 0.2,
     maxChildSize: 0.7,
     builder: (context, controller) => ClipRRect(
       borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
       child: Material(
        color: Colors.white,
         child: Container( 
         color: Colors.transparent,
         child: ListView.builder(
           controller: controller,
           itemCount: 1,
           itemBuilder: ((context, index) {
             return Column(
              children: [
                SizedBox(height: 10),
                dragHandle(),
               ListTile(
                 leading: Icon(Icons.mail_outline, color: Colors.black),
                 title: Text('Inbox', style: TextStyle(color: Colors.black,)),
                 onTap: (() {
                   
                 }),
               ),
               ListTile(
                 leading: Icon(Icons.settings_outlined, color: Colors.black),
                 title: Text('Settings', style: TextStyle(color: Colors.black,)),
                 onTap: (() {
                   
                 }),
               ),
               ListTile(
                 leading: Icon(Icons.medical_services_outlined, color: Colors.black,),
                 title: Text('Pet care', style: TextStyle(color: Colors.black,)),
                 onTap: (() {
                   
                 }),
               ),
               ListTile(
                 leading: Icon(Icons.logout_rounded, color: Colors.black),
                 title: Text('Log out', style: TextStyle(color: Colors.black,)),
                 onTap: (() {
                   
                 }),
               ),
              ],
             );
           })) ,
         ),
       ),
     ),
    );
  }
}