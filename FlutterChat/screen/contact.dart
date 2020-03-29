import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp/providers/data.dart';
import 'dart:math'as math;

import '../widget/chatItem.dart';
class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Contacts",style: TextStyle(color: Colors.black,fontFamily:"Billabong",fontSize: 32 ),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.black,size: 30,), onPressed: (){})
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 0.82,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 165,
          ),
          itemCount:userData.length,
          itemBuilder: (context, i) {
            return ChatItem(image: userData[i]["photo"],name: userData[i]["name"],);
          }),
    );
  }
}
