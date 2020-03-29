import 'package:flutter/material.dart';

 Widget drawerChat(BuildContext context){

return  Drawer(
        
        child: Column(
          children: <Widget>[
            DrawerHeader(
              
              decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("images/8.jpg"),fit: BoxFit.cover)),
              child: Container(
                
                width: 300,
              height: 300,
              color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CircleAvatar(
                      maxRadius: 22,
                      backgroundImage: AssetImage("images/6.jpg"),

                    ),
                    Text("Chelida",style: TextStyle(color: Colors.white),),
                    Text("orphelia.domi@gmail.com",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              ),
              Expanded(child: ListView(
                children: <Widget>[
                  ListTile(
                    onTap: (){
                      Navigator.pushNamed(context, 'profilChat');
                      
                    },
                    leading: IconButton(icon: Icon(Icons.person,color: Color(0XFF0707ED)), onPressed:(){} ),
                    title: Text("Mon profil"),
                  ),
                  ListTile(
                    onTap: (){
                    Navigator.pushNamed(context, 'contacts');

                    },
                      leading: IconButton(icon: Icon(Icons.people,color: Color(0XFF0707ED)), onPressed:(){} ),
                    title: Text("Mes contacts"),
                  ),
                  ListTile(
                    leading: IconButton(icon: Icon(Icons.settings,color: Color(0XFF0707ED)), onPressed:(){} ),
                    title: Text("Parametre"),
                  ),
                  ListTile(
                    leading: IconButton(icon: Icon(Icons.chat,color: Color(0XFF0707ED)), onPressed:(){} ),
                    title: Text("Partager"),
                  )
                ],
              ))
          ],
        ),
      );

 }