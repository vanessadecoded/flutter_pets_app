// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_pets_app/widgets/posts_tab.dart';
import 'package:flutter_pets_app/widgets/pets_tab.dart';
import 'package:flutter_pets_app/widgets/likes_tab.dart';


class VisitorProfile extends StatelessWidget {

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
            child: IconButton(icon: Icon(Icons.add_box_outlined), 
            onPressed: () {  },
            color: Color.fromARGB(255, 240, 88, 0),
            
            ),),
          elevation: 0.0,
          actions: [
            Container(
            padding: EdgeInsets.all(10),
             child: IconButton(icon: Icon(Icons.menu_rounded),
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
       
        // ignore: prefer_const_constructors
        body: Stack(
          fit: StackFit.expand,
          children: [
                  Column(
            children: [
              //profile photo
              Container( 
              height: 120,  
              width: 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 226, 226, 226),
              ),
                 child: IconButton(icon: Icon(Icons.person_outline_rounded, size: 80,),
                  onPressed: () {  },
                  color: Colors.grey,
                  ),
              ),
              
                 //username
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text('Vanessa Mayama',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                   ),
                 ),
                 
                 //bio
                  Text('Bio title',
                  style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 5),
                 
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
                      // ignore: avoid_unnecessary_containers
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
                  SizedBox(height: 5),
                 
                 //buttons
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                  padding: EdgeInsets.all(1),
                child: ClipRRect(borderRadius: BorderRadius.circular(18),
              child: Material(
                color: Color.fromARGB(255, 226, 226, 226),
                child: InkWell(
                  splashColor: Colors.transparent,
                  //highlightColor: Colors.transparent,
                  onTap: () {
                    
                  },
               child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 30),
                child: Text('Message',
                textAlign: TextAlign.center,
                style: TextStyle(
                 fontSize: 15,
                 color: Colors.black,
                 fontWeight: FontWeight.bold 
                ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                 borderRadius: BorderRadius.circular(18),
                 color: Colors.transparent,
                ),
               ),
            ),
          ),
                ),
              ),
                      SizedBox(width: 7),
                  Container(
                  padding: EdgeInsets.all(1),
                child: ClipRRect(borderRadius: BorderRadius.circular(18),
              child: Material(
                color: Color.fromARGB(255, 226, 226, 226),
                child: InkWell(
                  splashColor: Colors.transparent,
                  //highlightColor: Colors.transparent,
                  onTap: () => showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context, 
                builder: (context) => ContactDrawer(),
                ),
               child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 30),
                child: Text('Contact',
                textAlign: TextAlign.center,
                style: TextStyle(
                 fontSize: 15,
                 color: Colors.black,
                 fontWeight: FontWeight.bold 
                ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                 borderRadius: BorderRadius.circular(18),
                 color: Colors.transparent,
                ),
               ),
            ),
          ),
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
                      icon: Icon(Icons.pets, color: Colors.black),
                    ),
                    Tab(
                      icon: Icon(Icons.favorite_border_rounded, color: Colors.black),
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
                 
                 //bottom sheet
                 //TopList(),
               ],
        ),
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
                 leading: Icon(Icons.flag_circle, color: Colors.black),
                 title: Text('Report', style: TextStyle(color: Colors.black,)),
                 onTap: (() {
                   
                 }),
               ),
               ListTile(
                 leading: Icon(Icons.block, color: Colors.black),
                 title: Text('Block', style: TextStyle(color: Colors.black,)),
                 onTap: (() {
                   
                 }),
               ),
               ListTile(
                 leading: Icon(Icons.info_outline_rounded, color: Colors.black,),
                 title: Text('About This Account', style: TextStyle(color: Colors.black,)),
                 onTap: (() {
                   
                 }),
               ),
               ListTile(
                 leading: Icon(Icons.people_alt_outlined, color: Colors.black),
                 title: Text('Share Profile', style: TextStyle(color: Colors.black,)),
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

class ContactDrawer extends StatelessWidget {
  const ContactDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
     initialChildSize: 0.4,
     minChildSize: 0.2,
     maxChildSize: 0.4,
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
                 leading: Icon(Icons.phone_outlined, color: Colors.black),
                 title: Text('Call', style: TextStyle(color: Colors.black,)),
                 onTap: (() {
                   
                 }),
               ),
               ListTile(
                 leading: Icon(Icons.mail_outline_rounded, color: Colors.black),
                 title: Text('Email', style: TextStyle(color: Colors.black,)),
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