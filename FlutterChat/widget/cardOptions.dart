import 'package:flutter/material.dart';
Widget CardOptions(IconData icon,String title,String images){

  return Container(
                          
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.white54,
                                    child: IconButton(icon: Icon(icon,color: Colors.black,), onPressed: (){}),
                                  ),
                                  
                                ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(title,style: TextStyle(color: Colors.white,fontSize: 18),),
                                  ],
                                ),
                                
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.darken),image: AssetImage(images),fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                          width: 150,
                          height: 100,
                        );

}