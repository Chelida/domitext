import 'package:flutter/material.dart';
import 'package:whatsapp_clone/FlutterChat/widget/cardOptions.dart';

class ProfilChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white24,
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/ra.jpg"),
                  ),
                ),
              ],
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Octave",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      )),
                  background: Image.asset(
                    "images/8.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            
           
            child: Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 10,
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 30),
                    width: MediaQuery.of(context).size.width,
                    
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          margin: EdgeInsets.only(top: 50),
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                        image: AssetImage("images/6.jpg"))),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Emama Watsan",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 27),
                                ),
                                Text(
                                  "new york",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text("Fallowers",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                Text("5.7",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ],
                            ),
                            Container(
                              width: 1,
                              height: 25,
                              color: Colors.grey,
                            ),
                            Column(
                              children: <Widget>[
                                Text("Fallowers",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                Text("924",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ],
                            ),
                            Container(
                              width: 1,
                              height: 25,
                              color: Colors.grey,
                            ),
                            Column(
                              children: <Widget>[
                                Text("Fallowers",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                Text("1.7",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        
                        CardOptions(Icons.movie_creation, "Story", "images/text.jpg"),
                        CardOptions(Icons.people,"Mes groupes", "images/amie.jpg"),
                        CardOptions(Icons.calendar_today, "Evenement", "images/o.jpg"),
                        CardOptions(Icons.explore, "Decouverte", "images/monde.jpg"),
                      ],
                      
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                 ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    color: Colors.purple,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Ajouter une publication"),
                  trailing: Icon(Icons.chevron_right),
                ),


                ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    color: Colors.purple,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Modifier"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    color: Colors.purple,
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Supprimer mon compte"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    color: Colors.purple,
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Partager l'appl"),
                  trailing: Icon(Icons.chevron_right),
                ),

                 ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    color: Colors.purple,
                    child: Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Aide"),
                  trailing: Icon(Icons.chevron_right),
                ),

                 ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    color: Colors.purple,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Aide"),
                  trailing: Icon(Icons.chevron_right),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
