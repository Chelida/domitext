import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp/providers/data.dart';
import '../widget/drawerChat.dart';

class HomeChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    goto(String nom) {
      Navigator.pushNamed(context, 'discMessage',
          arguments: userData.firstWhere((item) => item["name"] == nom));
    }

    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: userData.length,
              itemBuilder: (context, i) {
                return Container(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          goto(userData[i]["name"]);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10),
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                            image: AssetImage(
                                              userData[i]["photo"],
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2, left: 3),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            userData[i]["name"],
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          width: 100,
                                          child: Text(
                                            userData[i]["message"],
                                            overflow: TextOverflow.ellipsis,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(userData[i]["date"]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
