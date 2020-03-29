import 'package:whatsapp_clone/FlutterChat/screen/homeChat.dart';
import 'package:whatsapp_clone/FlutterChat/screen/listAppel.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import '../screen/contact.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

import 'drawerChat.dart';

class NavChat extends StatefulWidget {

  @override
  _NavChatState createState() => _NavChatState();
}

class _NavChatState extends State<NavChat> {
  final GlobalKey<ScaffoldState>scaffoldKey = new GlobalKey<ScaffoldState>();
  int pageIndex = 0;
  void onTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  List viewList = [
    HomeChat(),
    ListAppel(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       key: scaffoldKey,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              scaffoldKey.currentState.openDrawer();
            },
                      child: CircleAvatar(
              
              backgroundImage: AssetImage("images/6.jpg"),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white24,
        title: Text(
          "Flutter Chat",
          style: TextStyle(
              fontSize: 39,
              fontFamily: "Billabong",
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 22,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: drawerChat(context),

      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      
      bottomNavigationBar: BubbleBottomBar(
        backgroundColor: Colors.grey.shade200,

        currentIndex: pageIndex,
        onTap: onTapped,
        fabLocation: BubbleBottomBarFabLocation.end,
        
        hasNotch: true, 
        
      
        items: <BubbleBottomBarItem>[
          
          BubbleBottomBarItem(
            backgroundColor: Colors.blueAccent,
            title: Text("Home Chat"),
            activeIcon: Icon(
              FontAwesomeIcons.solidComment,
              color: Colors.black,
            ),
            icon: Icon(FontAwesomeIcons.solidComment,color: Colors.black54,),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            title: Text("List Appel"),
             activeIcon: Icon(
              Icons.call,
              color: Colors.black,
            ),
            icon: Icon(Icons.call,color: Colors.black54,),
          ),
        ],
        opacity: .2,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
        elevation: 0,
      ),
      body: viewList.elementAt(pageIndex),
    );
  }
}
