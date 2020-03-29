import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp/providers/data.dart';
class ListAppel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: userData.length,itemBuilder: (context,i){


      return  Dismissible(
        key: ValueKey(1),
        direction: DismissDirection.endToStart,
        confirmDismiss: (direction){
          return showDialog(context: context,builder: (context)=>
          AlertDialog(
            title:Text("Attention") ,
            content:Text("Djo tu veux vraiment supprimé"),
            actions: <Widget>[
              FlatButton(onPressed: (){
                Navigator.of(context).pop(false);
              }, child:Text("non")),
              FlatButton(onPressed: (){
                Navigator.of(context).pop(true);
              }, child:Text("Wep")),
            ],
          ),
          );
        },
        background: Container(
          color: Colors.red,
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 30),
          child: IconButton(icon: Icon(Icons.delete,color: Colors.white,), onPressed: (){}),
        ),
              child: Card(
                child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(userData[i]["photo"]),
                
              ),
              title: 
                  Text(userData[i]["name"]),
                  subtitle: Text(userData[i]["date"]),
                  
                  
                     
               
              trailing: IconButton(icon: Icon(Icons.call), onPressed: (){}),
            ),
        ),
      );
    });
  }
}