import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class DiscMessage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context).settings.arguments as Map<String,Object>;
    print(arg["photo"]);
    return Scaffold(
      
      body: SafeArea(
        top: true,
              child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
             FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 1,
            
              child:Column(
                
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.width/3,),
            Expanded(
              child: ListView(
                children: <Widget>[
                
                  SizedBox(height: 20),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(arg["photo"]),
                    ),
                    title: Container(
                      width: 270,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight:Radius.circular(20),bottomLeft: Radius.circular(20),)),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 250,
                                child: Text(
                                    " quand un imprimeur anonyme assembla ensemble des morcenfhfhfjfjfyrfhfhfghfghfhfhfhfhfhfhfhfhfhfufjfjfhfjfjgnbvjhgngjgjhfnffhaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siè"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text("12h00"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),


                 ListTile(
                    leading: CircleAvatar(
                     
                    ),
                    title: Container(
                      width: 270,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight:Radius.circular(20),bottomLeft: Radius.circular(20),)),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 250,
                                child: Text(
                                    " quand un imprimeur anonyme assembla ensemble des morcenfhfhfjfjfyrfhfhfghfghfhfhfhfhfhfhfhfhfhfufjfjfhfjfjgnbvjhgngjgjhfnffhaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siè"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text("12h00"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                SizedBox(height: 20),
                  ListTile(
                   
                    title: Container(
                      width: 250,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20),bottomLeft: Radius.circular(20), )),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 250,
                                child: Text(
                                    " quand un imprimeur anonyme assembla ensemble des morcenfhfhfjfjfyrfhfhfghfghfhfhfhfhfhfhfhfhfhfufjfjfhfjfjgnbvjhgngjgjhfnffhaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siè"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text("12h00"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.image), onPressed: (){}),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      width: MediaQuery.of(context).size.width / 1.6,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Taper message",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                        
                         
                        ),
                        
                      ),
                    ),
                  ),
                  
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.send,size: 30),
                  ),
                ],
                
              ),
              
            ),
          ],
        ),
            ),
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.17,
              child: Container(
                
                color: Colors.blue,
              ),
            ),
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.1,
              child: Container(
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed: (){
                      Navigator.pop(context);
                    }),
                    Text(arg["name"],style: TextStyle(color: Colors.white,fontSize: 18),),
                    PopupMenuButton(
                      icon: Icon(Icons.more_vert,color: Colors.white,),
                      itemBuilder: (_)=>[
                        PopupMenuItem(child: Text("Information"),),
                        PopupMenuItem(child: Text("Archiver"),),
                        PopupMenuItem(child: Text("Supprimer"),),
                        PopupMenuItem(child: Text("Fond d'ecran"),),
                      ]),
                  ],
                ),
                color: Colors.blue,
              ),
            ),
             Positioned(
               top: 82,
               
              child: Row(
                    children: <Widget>[
                      SizedBox(width: 3,),
                      CircleAvatar(
                        backgroundColor: Colors.white54,
                        child: IconButton(icon: Icon(Icons.call,color: Colors.black,), onPressed: (){
                          Navigator.pushNamed(context, "appelAudio");
                          
                        }),
                      ),
                      SizedBox(width: 6,),
                      CircleAvatar(
                        backgroundColor: Colors.white54,
                        child: IconButton(icon: Icon(FontAwesomeIcons.video,color: Colors.black,), onPressed: (){
                          Navigator.pushNamed(context, "appelVideo");
                          }),
                      ),
                      
                      SizedBox(width: MediaQuery.of(context).size.width/2,),
                      Container(
                        height: 60,
                        width: 60,
                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,image: DecorationImage(image: AssetImage(arg["photo"]),fit: BoxFit.cover)
                        ),
                      ),
                    ],
                  ),

                ),
           
            
          ],
          
          
        ),
      ),

    );
  }
}